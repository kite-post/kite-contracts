// Тест згенерованого пакета: ловить розʼїзд схем, типів і реєстру.
// Перевірка типів тут не менш важлива за рантайм — `npm test` спершу ганяє tsc.
import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import { test } from "node:test";

import {
  createKiteClient,
  kiteEventRegistry,
  kiteEventTypes,
  kiteTopics,
  shipmentStatusValues,
  type ScanUnitScannedEvent,
  type ShipmentStatusChangedEvent,
} from "../dist/index.js";

const example = <T>(name: string): T =>
  JSON.parse(readFileSync(new URL(`../../examples/${name}`, import.meta.url), "utf8")) as T;

test("подія зміни стану читається типом контракту", () => {
  const event = example<ShipmentStatusChangedEvent>("shipment.status-changed.json");

  assert.equal(event.type, "kite.shipment.status-changed.v1");
  assert.equal(event.data.trackingNumber, "KT123456785UA");
  assert.equal(event.data.statusAfter, "READY_FOR_PICKUP");
  assert.ok(shipmentStatusValues.includes(event.data.statusAfter));
  assert.ok(event.kitereceivedat, "received_at — тайбрейк порядку (8.3, п. 4)");
});

test("скан мішка несе список посилок", () => {
  const event = example<ScanUnitScannedEvent>("scan.unit-scanned.json");
  assert.equal(event.data.shipmentIds.length, 2);
});

test("реєстр подій узгоджений із registry.json", () => {
  const registry = example<{ events: { type: string; topic: string; partitionKey: string }[] }>(
    "../events/registry.json",
  );

  assert.equal(kiteEventTypes.length, registry.events.length);
  for (const entry of registry.events) {
    const meta = kiteEventRegistry[entry.type as keyof typeof kiteEventRegistry];
    assert.ok(meta, `${entry.type} немає в реєстрі`);
    assert.equal(meta.topic, entry.topic);
    assert.equal(meta.partitionKey, entry.partitionKey);
    assert.ok(kiteTopics.includes(meta.topic));
  }
});

test("клієнт API створюється з базовою адресою", () => {
  const api = createKiteClient({ baseUrl: "http://localhost/api/v1" });
  assert.equal(typeof api.GET, "function");
  assert.equal(typeof api.POST, "function");
});
