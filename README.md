# kite-contracts — контракти Kite

Тут живуть REST-контракт і схеми подій Kite, і з них генеруються Java-класи,
Go-структури, Dart-моделі, TypeScript-типи і pydantic-моделі. Сервіс підключає контракти **залежністю,
закріпленою за тегом**, і не тримає копій схем у себе (5.4, п. 6; 8.3, п. 8).

```
openapi/openapi.yaml   REST за шлюзом: /api/v1 (розділ 9)
events/**.schema.json  JSON Schema подій + конверт CloudEvents (розділи 8, 9.7)
events/registry.json   тип події → топік, продюсер, споживачі, ключ розділу
events/api.schema.json дзеркало REST-схем для подій — генерується, не правиться
auth/permissions.json  дозволи і мапа «роль → дозволи» (3.2)
java/                  Maven-пакет ua.kite:kite-contracts
kite/                  Go-пакет github.com/kite-post/kite-contracts/kite
dart/                  Dart-пакет kite_contracts
ts/                    npm-пакет @kite-post/contracts
python/                Python-пакет kite-contracts (pydantic)
tools/                 бандлер, валідатор, генератори, перевірка сумісності
examples/              приклади подій, на яких тримаються тести трьох мов
```

## Правити — тільки джерело

Джерело правди — `openapi/openapi.yaml`, `events/**/*.schema.json` і
`auth/permissions.json`. Решта генерується: `events/api.schema.json`,
`kite/*.gen.go`, `dart/lib/**`, `ts/src/*.gen.ts`,
`python/src/kite_contracts/{models,registry,permissions}.py`, Java-класи. Руками
написана лише перевірка дозволу: `kite/authz.go`,
`java/src/main/java/ua/kite/contracts/auth/Permissions.java` і функції в
`ts/src/index.ts`. `make check` падає, якщо згенероване розійшлося зі схемами.

Одне ім'я — одне визначення. Схема події не описує тип, який уже є в
REST-контракті, а посилається на нього:

```json
"declaredValue": { "$ref": "api.schema.json#/$defs/Money" }
```

Тому в усіх п'яти мовах `Money` — один клас і для API, і для подій.

## Команди

```bash
make generate   # Go, Dart, TypeScript, Python і реєстр подій
make java       # Maven-пакет
make ts         # npm-пакет у ts/dist
make compat     # сумісність із попереднім тегом
make verify     # те саме, що й CI: lint + check + compat + тести п'яти мов
```

Генератори їдуть у Docker, тож локально не потрібні ні Go, ні Dart, ні Node,
ні Python-пакети — достатньо докера і Maven.

| Мова       | Генератор                                     | Як дістається сервісу                    | Код у git |
| ---------- | --------------------------------------------- | ---------------------------------------- | --------- |
| Java       | openapi-generator (`spring`, `java/native`)   | Maven-пакет у GitHub Packages            | ні        |
| TypeScript | openapi-typescript + openapi-fetch            | npm-пакет `@kite-post/contracts`, GitHub Packages | ні (лише `*.gen.ts`) |
| Go         | oapi-codegen                                  | Go-модуль з git за тегом                 | так       |
| Dart       | openapi-generator (`dart`)                    | git-залежність за тегом, шлях `dart`     | так       |
| Python     | datamodel-code-generator (pydantic v2)        | pip з git за тегом, підкаталог `python`  | так       |

Go, Dart і Python реєстру в GitHub Packages не мають, тож їхній згенерований
код лежить у git, а тег і є релізом. `make check` падає, якщо він розійшовся
зі схемами.

## Як підключити з сервіса

**Java** (`pom.xml`), пакет із GitHub Packages:

```xml
<dependency>
  <groupId>ua.kite</groupId>
  <artifactId>kite-contracts</artifactId>
  <version>0.3.0</version>
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

**TypeScript** (`package.json` у Vue-застосунку), з GitHub Packages поруч з
`@kite/ui`:

```bash
pnpm add --save-exact @kite-post/contracts@0.2.0
```

```ts
import { createKiteClient, kiteEventRegistry, type PublicTracking } from '@kite-post/contracts'

const api = createKiteClient({ baseUrl: '/api/v1' })
const { data } = await api.GET('/public/track/{trackingNumber}', {
  params: { path: { trackingNumber: 'KT123456785UA' } },
})
```

**Python** (`pyproject.toml` в ai-service чи симуляторі):

```toml
dependencies = [
    "kite-contracts @ git+https://github.com/kite-post/kite-contracts.git@v0.2.0#subdirectory=python",
]
```

```python
from kite_contracts import parse_event
from kite_contracts.registry import EVENT_REGISTRY

event = parse_event(raw)                  # ShipmentStatusChangedEvent тощо
topic = EVENT_REGISTRY[event.type].topic  # "shipment.events"
```

У шаблонах сервісів усе це робить одна команда: `make contracts V=0.2.0`.

## Дозволи

Keycloak кладе в токен лише ролі (`realm_access.roles`), а що вони дозволяють —
вирішує мапа з `auth/permissions.json` (3.2, 14.2 п. 9). Правка матриці не чіпає
realm і не роздуває токен: це новий реліз контрактів. Ім'я дозволу —
`<ресурс>:<дія>[:<чиє>]`: `own` — свої відправлення, `org` — своєї організації,
`location` — свого відділення чи хабу, `on-behalf` — за клієнта, `all` —
будь-які. Скоуп (яке саме відділення) дозвіл не несе: його сервіс перевіряє сам,
за `network.staff_assignment` (3.1).

З `permissions.json` виходить перелік `Permission` у кожній мові і функція
перевірки, яка бере ролі прямо з токена. Незнайомі ролі
(`default-roles-kite`, `offline_access`) нічого не дають.

```java
List<String> roles = jwt.getClaimAsMap("realm_access").get("roles");
if (!Permissions.has(roles, Permission.SHIPMENT_CREATE_OWN)) throw forbidden();
```

```go
if !kite.HasPermission(roles, kite.PermissionSHIPMENTCREATEOWN) { /* 403 */ }
```

TypeScript, Dart і Python мають `hasPermission` / `has_permission` і
`permissionsOf` / `permissions_of` — у застосунках, щоб ховати недоступні дії;
рішення все одно приймає сервіс. `make bundle` перевіряє, що кожна роль із
`Role` має запис і що кожен дозвіл комусь виданий.

## Внутрішні API

Синхронні виклики між сервісами (5.4, п. 7) описані в тому ж контракті, під
`/internal/v1/**` з тегами `internal-*`. Шлюз маршрутизує лише `/api/v1`, тож
назовні вони не виходять; сервіс слухає їх без префікса `/api/v1`.

| Операція | Хто кличе → хто відповідає | Доступ |
| --- | --- | --- |
| `POST /internal/v1/pricing/quotes` | shipment → pricing: ціна накладної з `id` збереженого розрахунку | `pricing:quote` |
| `GET /internal/v1/network/routes` | shipment, pricing → network: зона, зупинки, плановий час | `network:route` |
| `POST /internal/v1/payments/provider-events` | mock-pay → payment: результат платежу чи повернення | підпис `Kite-Signature` |

Перші два несуть токен сервісного акаунта (`client_credentials`, роль
`SYSTEM`); потрібний дозвіл записаний в операції як `x-kite-permission`.
Вебхук провайдера підписаний HMAC, як вебхуки бізнесу (9.1). Тайм-аут 2 с і
circuit breaker — на боці того, хто кличе.

Клієнти генеруються разом із рештою: у Java — `ua.kite.contracts.client.Internal*Api`
(адресу задає сервіс: `apiClient.updateBaseUri("http://pricing-service:8080")`),
у Go — `kite.NewClientWithResponses("http://pricing-service:8080")`. Сторона,
що відповідає, реалізує `ua.kite.contracts.api.Internal*Api` у контролері без
`@RequestMapping("/api/v1")` або `kite.ServerInterface` у Go.

## Версії і сумісність

Версія одна на всі п'ять пакетів, у файлі `VERSION`; `make version V=0.2.0`
розставляє її по `pom.xml`, конфігу Dart, `info.version`, `ts/package.json` і
`python/pyproject.toml`. Мажорна версія не змінюється: зміни лише адитивні,
а в Go перехід на v2 змінив би шлях імпорту.

Правила зміни схем (8.3, п. 8):

- схему можна змінювати **лише додаванням необов'язкових полів**;
- зміна змісту наявного поля — це новий тип події з суфіксом версії
  (`kite.shipment.status-changed.v2`), а старий живе, доки має споживачів;
- схеми подій не закриваються `additionalProperties: false` — інакше новий
  продюсер зламає старого споживача; `make verify` це перевіряє.

`make compat` (і CI на кожен PR) звіряє робочу копію з попереднім тегом:
REST — `oasdiff breaking`, події — `tools/compat.py`. Помилка — зник тип чи
поле, змінився тип, формат чи `$ref`, поле стало обов'язковим, зникло значення
enum, змінились топік чи ключ розділу, зникли роль чи дозвіл. Нове значення
enum і роль, що втратила дозвіл, — лише попередження: споживач має читати
незнайомі значення як «інше», а звуження матриці має бути помітним у рев'ю.

## Реліз

```bash
make version V=0.3.0 && make generate
git commit -am "kite-contracts 0.3.0" && make release
```

За тегом CI публікує Maven- і npm-пакети, а потім розсилає подію
`kite-contracts-released` усім репозиторіям організації з топіком
`kite-contracts`. Кожен із них workflow `contracts-bump` (спільний, з
`.github`) відкриває собі PR з `make contracts V=0.3.0` — тулчейном самого
сервіса, тож `go.sum` і `pnpm-lock.yaml` узгоджуються як руками. Для розсилки
потрібен секрет організації `CONTRACTS_BUMP_TOKEN` (fine-grained PAT з
`contents: write` і `pull-requests: write`); без нього крок пропускається.

Порядок наскрізної зміни (5.6): спершу адитивна зміна тут із новим тегом,
потім споживачі, і тільки потім продюсер починає слати нове поле.

## Що в цій версії є

- Ядро REST: публічна частина й автентифікація (9.2), клієнтський кабінет
  (9.3), прийом сканів і сортувальна підказка (9.5) — 41 шлях, 53 операції.
- Усі 34 типи подій із дев'яти топіків (9.7) з типізованими конвертами
  CloudEvents.
- Kite Business (9.4) і решта Kite Ops (9.5) дописуються разом із
  відповідними сервісами.
- З 0.2.0 — пакети для TypeScript і Python і перевірка сумісності з
  попереднім тегом.
- З 0.3.0 — перелік `Role`: усі ролі realm `kite` (3.1), як їх видає
  Keycloak у токені. `ActorRole` лишається переліком акторів подій (персонал і
  `SYSTEM`) і має бути підмножиною `Role` — це перевіряє `make bundle`.
- З 0.3.0 — дозволи: перелік `Permission`, мапа «роль → дозволи» і перевірка
  для п'яти мов (3.2).
- З 0.3.0 — внутрішні API фази 1: розрахунок ціни, маршрут і зона між точками,
  вебхук mock-pay → payment-service (5.4, п. 7).
