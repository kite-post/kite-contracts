#!/usr/bin/env python3
"""Робить із events/registry.json реєстр подій як код.

Java бере registry.json просто з ресурсів jar, а Go і Dart так не вміють —
тому для них реєстр генерується у код: тип події → топік, продюсер, споживачі,
ключ розділу. Без цього сервіс мусив би тримати імена топіків у себе.
"""

from __future__ import annotations

import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
EVENTS = ROOT / "events"


def go_const(event_type: str) -> str:
    """kite.shipment.status-changed.v1 → KiteEventTypeKiteShipmentStatusChangedV1."""
    parts = re.split(r"[.\-]", event_type)
    return "KiteEventType" + "".join(p[:1].upper() + p[1:] for p in parts)


def dart_name(event_type: str) -> str:
    parts = re.split(r"[.\-]", event_type)
    head = parts[0]
    return head + "".join(p[:1].upper() + p[1:] for p in parts[1:])


def main() -> None:
    reg = json.loads((EVENTS / "registry.json").read_text(encoding="utf-8"))
    events = reg["events"]
    for e in events:
        doc = json.loads((EVENTS / e["schema"]).read_text(encoding="utf-8"))
        e["schemaId"] = doc["$id"]
    topics = sorted({e["topic"] for e in events})

    # ── Go ───────────────────────────────────────────────────────────────────
    go = [
        "// Згенеровано з events/registry.json командою tools/gen-registry.py — не правити.",
        "",
        "package kite",
        "",
        "// EventMeta — що відомо про тип події з реєстру контрактів: куди вона",
        "// їде, хто її публікує і чим ключується розділ Kafka (9.7, 8.3 п. 4).",
        "type EventMeta struct {",
        "\tType         KiteEventType",
        "\tTopic        KiteTopic",
        "\tProducer     string",
        "\tConsumers    []string",
        "\tPartitionKey string",
        "\tSchemaID     string",
        "\tEventCodes   []string",
        "}",
        "",
        "// EventRegistry — усі доменні події Kite за типом.",
        "var EventRegistry = map[KiteEventType]EventMeta{",
    ]
    for e in events:
        consumers = ", ".join(f'"{c}"' for c in e["consumers"])
        codes = ", ".join(f'"{c}"' for c in e.get("eventCodes", []))
        go += [
            f"\t{go_const(e['type'])}: {{",
            f"\t\tType:         {go_const(e['type'])},",
            f'\t\tTopic:        KiteTopic("{e["topic"]}"),',
            f'\t\tProducer:     "{e["producer"]}",',
            f"\t\tConsumers:    []string{{{consumers}}},",
            f'\t\tPartitionKey: "{e["partitionKey"]}",',
            f'\t\tSchemaID:     "{e["schemaId"]}",',
            f"\t\tEventCodes:   []string{{{codes}}},",
            "\t},",
        ]
    go += ["}", "", "// Topics — топіки Kafka, на які підписуються сервіси.", "var Topics = []KiteTopic{"]
    go += [f'\tKiteTopic("{t}"),' for t in topics]
    go += ["}", ""]
    (ROOT / "kite" / "registry.gen.go").write_text("\n".join(go), encoding="utf-8")

    # ── Dart ─────────────────────────────────────────────────────────────────
    dart = [
        "// Згенеровано з events/registry.json командою tools/gen-registry.py — не правити.",
        "",
        "/// Що відомо про тип події з реєстру контрактів Kite (9.7).",
        "class KiteEventMeta {",
        "  const KiteEventMeta({",
        "    required this.type,",
        "    required this.topic,",
        "    required this.producer,",
        "    required this.consumers,",
        "    required this.partitionKey,",
        "    required this.schemaId,",
        "    this.eventCodes = const <String>[],",
        "  });",
        "",
        "  final String type;",
        "  final String topic;",
        "  final String producer;",
        "  final List<String> consumers;",
        "  final String partitionKey;",
        "  final String schemaId;",
        "  final List<String> eventCodes;",
        "}",
        "",
        "/// Усі доменні події Kite за типом.",
        "const Map<String, KiteEventMeta> kiteEventRegistry = <String, KiteEventMeta>{",
    ]
    for e in events:
        consumers = ", ".join(f"'{c}'" for c in e["consumers"])
        codes = ", ".join(f"'{c}'" for c in e.get("eventCodes", []))
        dart += [
            f"  '{e['type']}': KiteEventMeta(",
            f"    type: '{e['type']}',",
            f"    topic: '{e['topic']}',",
            f"    producer: '{e['producer']}',",
            f"    consumers: <String>[{consumers}],",
            f"    partitionKey: '{e['partitionKey']}',",
            f"    schemaId: '{e['schemaId']}',",
            f"    eventCodes: <String>[{codes}],",
            "  ),",
        ]
    dart += ["};", "", "/// Топіки Kafka (9.7).", "const List<String> kiteTopics = <String>["]
    dart += [f"  '{t}'," for t in topics]
    dart += ["];", ""]
    out = ROOT / "dart" / "lib" / "kite_registry.dart"
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text("\n".join(dart), encoding="utf-8")

    print(f"реєстр як код: {len(events)} подій, {len(topics)} топіків → kite/registry.gen.go, dart/lib/kite_registry.dart")


if __name__ == "__main__":
    main()
