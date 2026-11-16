# Той самий набір цілей, що й у решти репозиторіїв Kite, плюс генерація.
# Усі генератори крім Maven їдуть у Docker, тож локально не потрібні ні Go,
# ні Dart SDK: `make generate` працює на чистій машині з одним докером.

ORG       ?= kite-post
VERSION   := $(shell cat VERSION)
SPEC      := openapi/openapi.yaml
BUNDLE    := build/kite-contracts.openapi.json

YQ_IMAGE        ?= mikefarah/yq:latest
GO_IMAGE        ?= golang:1.27
DART_IMAGE      ?= dart:stable
GENERATOR_IMAGE ?= openapitools/openapi-generator-cli:v7.18.0
OAPI_CODEGEN    ?= github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen@v2.5.0

MVN := $(if $(wildcard ./mvnw),./mvnw,mvn)
YQ  := docker run --rm -i $(YQ_IMAGE)
GO  := docker run --rm -v $(CURDIR):/w -w /w -v kite-contracts-gomod:/go/pkg/mod $(GO_IMAGE)
DART := docker run --rm -u $(shell id -u):$(shell id -g) -e HOME=/tmp -e PUB_CACHE=/tmp/pub -v $(CURDIR):/w -w /w/dart $(DART_IMAGE)
GEN := docker run --rm -u $(shell id -u):$(shell id -g) -v $(CURDIR):/local -w /local $(GENERATOR_IMAGE)

# Усе, що генерується і при цьому лежить у git: саме це перевіряє `make check`.
GENERATED := kite dart/lib dart/pubspec.yaml dart/README.md events/api.schema.json

.DEFAULT_GOAL := help
.PHONY: help bundle generate generate-go generate-dart generate-registry java \
        lint check test test-java test-go test-dart verify install-local \
        version release clean

help: ## Показати цілі
	@grep -hE '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-16s\033[0m %s\n", $$1, $$2}'

build/openapi.json: $(SPEC)
	@mkdir -p build
	$(YQ) -o=json '.' < $(SPEC) > $@

bundle: build/openapi.json ## Звести контракт і схеми подій в один документ
	python3 tools/bundle.py build/openapi.json
	python3 tools/validate.py

generate: bundle generate-registry generate-go generate-dart ## Перегенерувати Go, Dart і реєстр
	@echo "Java-класи генеруються під час make java — вони не лежать у git."

generate-registry: ## Реєстр подій як код для Go і Dart
	python3 tools/gen-registry.py

generate-go: bundle ## Go: моделі, клієнт і серверні інтерфейси
	$(GO) sh -c 'GOFLAGS=-mod=mod go run $(OAPI_CODEGEN) -config tools/oapi-codegen.yaml $(BUNDLE) && go mod tidy'

generate-dart: bundle ## Dart: моделі й клієнт для kite-mobile
	$(GEN) generate -c tools/openapi-generator-dart.yaml
	python3 tools/fix-dart-pubspec.py

java: bundle ## Зібрати Maven-пакет ua.kite:kite-contracts
	$(MVN) -B -ntp -f java/pom.xml package

lint: bundle ## Перевірити контракт і схеми подій
	$(GEN) validate -i $(SPEC) --recommend
	$(GEN) validate -i $(BUNDLE)

check: generate ## Переконатися, що згенерований код відповідає схемам
	@if ! git diff --quiet -- $(GENERATED); then \
		echo "Згенерований код розійшовся зі схемами — проганяй make generate і комить:"; \
		git diff --stat -- $(GENERATED); \
		exit 1; \
	fi
	@echo "Згенерований код відповідає схемам."

test: test-java test-go test-dart ## Усі тести

test-java: ## Тести Java-пакета
	$(MVN) -B -ntp -f java/pom.xml test

test-go: ## Тести Go-модуля
	$(GO) sh -c 'gofmt -l kite && go vet ./... && go test ./...'

test-dart: ## Аналіз і тести Dart-пакета
	$(DART) sh -c 'dart pub get --no-example >/dev/null && dart analyze --no-fatal-warnings lib && dart test'

verify: lint check test ## Усе, що робить CI

install-local: bundle ## Поставити jar у локальний ~/.m2 — щоб підключити з сервіса до публікації
	$(MVN) -B -ntp -f java/pom.xml install

version: ## Узгодити VERSION з pom.xml і pubspec Dart: make version V=0.2.0
	@test -n "$(V)" || (echo "Вкажи версію: make version V=0.2.0"; exit 1)
	@echo "$(V)" > VERSION
	@python3 tools/set-version.py "$(V)"
	@echo "Версія $(V) розставлена. Далі: make generate && git commit && make release"

release: ## Поставити тег поточної версії і залити його
	@git diff --quiet || (echo "Є незакомічені зміни"; exit 1)
	git tag -a "v$(VERSION)" -m "kite-contracts v$(VERSION)"
	git push origin "v$(VERSION)"
	@echo "Тег v$(VERSION) залитий — CI опублікує Maven-пакет."

clean: ## Прибрати збірку
	rm -rf build java/target dart/.dart_tool dart/pubspec.lock
