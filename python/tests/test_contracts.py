"""Тест згенерованого пакета: ловить розʼїзд схем, моделей і реєстру."""

from __future__ import annotations

import json
import pathlib

import pytest

from kite_contracts import EVENT_MODELS, EVENT_REGISTRY, TOPICS, UnknownEventTypeError, parse_event
from kite_contracts.models import ScanUnitScannedEvent, ShipmentStatus, ShipmentStatusChangedEvent

ROOT = pathlib.Path(__file__).resolve().parents[2]


def example(name: str) -> str:
    return (ROOT / "examples" / name).read_text(encoding="utf-8")


def test_status_changed_event() -> None:
    event = parse_event(example("shipment.status-changed.json"))

    assert isinstance(event, ShipmentStatusChangedEvent)
    assert event.type == "kite.shipment.status-changed.v1"
    assert event.data.tracking_number == "KT123456785UA"
    assert event.data.status_after is ShipmentStatus.READY_FOR_PICKUP
    assert event.kitereceivedat is not None, "received_at — тайбрейк порядку (8.3, п. 4)"


def test_unit_scanned_carries_shipment_list() -> None:
    event = ScanUnitScannedEvent.model_validate_json(example("scan.unit-scanned.json"))
    assert len(event.data.shipment_ids) == 2


def test_unknown_fields_are_tolerated() -> None:
    """Новий продюсер додає необов'язкове поле — старий споживач не падає (8.3, п. 8)."""
    raw = json.loads(example("shipment.status-changed.json"))
    raw["data"]["fieldFromTheFuture"] = 42
    parse_event(json.dumps(raw))


def test_unknown_type_is_reported() -> None:
    raw = json.loads(example("shipment.status-changed.json"))
    raw["type"] = "kite.shipment.unknown.v9"
    with pytest.raises(UnknownEventTypeError):
        parse_event(json.dumps(raw))


def test_round_trip_keeps_wire_names() -> None:
    event = parse_event(example("shipment.status-changed.json"))
    wire = json.loads(event.model_dump_json(by_alias=True, exclude_none=True))
    assert wire["data"]["trackingNumber"] == "KT123456785UA"


def test_registry_matches_registry_json() -> None:
    registry = json.loads((ROOT / "events" / "registry.json").read_text(encoding="utf-8"))
    types = [e["type"] for e in registry["events"]]

    assert set(EVENT_REGISTRY) == set(types)
    assert set(EVENT_MODELS) == set(types)
    for entry in registry["events"]:
        meta = EVENT_REGISTRY[entry["type"]]
        assert meta.topic == entry["topic"]
        assert meta.topic in TOPICS
        assert meta.partition_key == entry["partitionKey"]
