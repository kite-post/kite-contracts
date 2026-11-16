// Тест згенерованого пакета: ловить розʼїзд схем, моделей і реєстру.
import 'dart:convert';
import 'dart:io';

import 'package:kite_contracts/kite_contracts.dart';
import 'package:kite_contracts/kite_registry.dart';
import 'package:test/test.dart';

dynamic example(String name) =>
    jsonDecode(File('../examples/$name').readAsStringSync());

void main() {
  test('подія зміни стану розбирається', () {
    final event =
        ShipmentStatusChangedEvent.fromJson(example('shipment.status-changed.json'))!;

    expect(event.type.value, 'kite.shipment.status-changed.v1');
    expect(event.data.trackingNumber, 'KT123456785UA');
    expect(event.data.statusAfter, ShipmentStatus.READY_FOR_PICKUP);
    expect(event.data.eventCode, 'KT30');
    expect(event.kitereceivedat, isNotNull,
        reason: 'received_at — тайбрейк порядку (8.3, п. 4)');
  });

  test('скан мішка несе список посилок', () {
    final event = ScanUnitScannedEvent.fromJson(example('scan.unit-scanned.json'))!;

    expect(event.data.unitCode, 'BG0000000417');
    expect(event.data.shipmentIds.length, 2);
  });

  test('реєстр подій узгоджений із registry.json', () {
    final registry = example('../events/registry.json');
    final types = (registry['events'] as List)
        .map((e) => e['type'] as String)
        .toList();

    expect(kiteEventRegistry.length, types.length);
    for (final type in types) {
      final meta = kiteEventRegistry[type];
      expect(meta, isNotNull, reason: 'тип $type є в registry.json, але не в коді');
      expect(kiteTopics, contains(meta!.topic));
      expect(meta.partitionKey, isNotEmpty);
    }
  });
}
