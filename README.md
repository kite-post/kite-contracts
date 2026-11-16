# kite-contracts — контракти Kite

Тут живуть REST-контракт і схеми подій Kite, і з них генеруються Java-класи,
Go-структури й Dart-моделі. Сервіс підключає контракти **залежністю,
закріпленою за тегом**, і не тримає копій схем у себе (5.4, п. 6; 8.3, п. 8).

```
openapi/openapi.yaml   REST за шлюзом: /api/v1 (розділ 9)
events/**.schema.json  JSON Schema подій + конверт CloudEvents (розділи 8, 9.7)
events/registry.json   тип події → топік, продюсер, споживачі, ключ розділу
events/api.schema.json дзеркало REST-схем для подій — генерується, не правиться
java/                  Maven-пакет ua.kite:kite-contracts
kite/                  Go-пакет github.com/kite-post/kite-contracts/kite
dart/                  Dart-пакет kite_contracts
tools/                 бандлер, валідатор, генератор реєстру
examples/              приклади подій, на яких тримаються тести трьох мов
```

## Правити — тільки джерело

Джерело правди — `openapi/openapi.yaml` і `events/**/*.schema.json`. Решта
генерується: `events/api.schema.json`, `kite/*.gen.go`, `dart/lib/**`,
Java-класи. `make check` падає, якщо згенероване розійшлося зі схемами.

Одне ім'я — одне визначення. Схема події не описує тип, який уже є в
REST-контракті, а посилається на нього:

```json
"declaredValue": { "$ref": "api.schema.json#/$defs/Money" }
```

Тому в усіх трьох мовах `Money` — один клас і для API, і для подій.

## Команди

```bash
make generate   # Go, Dart і реєстр подій
make java       # Maven-пакет
make verify     # те саме, що й CI: lint + check + тести трьох мов
```

Генератори їдуть у Docker, тож локально не потрібні ні Go, ні Dart SDK —
достатньо докера і Maven.

## Як підключити з сервіса

**Java** (`pom.xml`), пакет із GitHub Packages:

```xml
<dependency>
  <groupId>ua.kite</groupId>
  <artifactId>kite-contracts</artifactId>
  <version>0.1.0</version>
</dependency>
```

Схеми й `registry.json` лежать у самому jar (`/kite/contracts/**`), тож
валідація подій не потребує копій у репозиторії сервіса.

**Go**:

```bash
go get github.com/kite-post/kite-contracts@v0.1.0
```

```go
import "github.com/kite-post/kite-contracts/kite"

meta := kite.EventRegistry[kite.KiteEventTypeKiteShipmentStatusChangedV1]
// meta.Topic == "shipment.events", meta.PartitionKey == "shipmentId"
```

**Dart** (`pubspec.yaml` у kite-mobile) — за тегом, бо пакет не публікується
на pub.dev:

```yaml
dependencies:
  kite_contracts:
    git:
      url: https://github.com/kite-post/kite-contracts.git
      ref: v0.1.0
      path: dart
```

## Версії і сумісність

Версія одна на всі три пакети, у файлі `VERSION`; `make version V=0.2.0`
розставляє її по `pom.xml`, конфігу Dart і `info.version`.

Правила зміни схем (8.3, п. 8):

- схему можна змінювати **лише додаванням необов'язкових полів**;
- зміна змісту наявного поля — це новий тип події з суфіксом версії
  (`kite.shipment.status-changed.v2`), а старий живе, доки має споживачів;
- схеми подій не закриваються `additionalProperties: false` — інакше новий
  продюсер зламає старого споживача; `make verify` це перевіряє.

Порядок наскрізної зміни (5.6): спершу адитивна зміна тут із новим тегом,
потім споживачі, і тільки потім продюсер починає слати нове поле.

## Що в цій версії є

- Ядро REST: публічна частина й автентифікація (9.2), клієнтський кабінет
  (9.3), прийом сканів і сортувальна підказка (9.5) — 41 шлях, 53 операції.
- Усі 34 типи подій із дев'яти топіків (9.7) з типізованими конвертами
  CloudEvents.
- Kite Business (9.4) і решта Kite Ops (9.5) дописуються разом із
  відповідними сервісами.
