"""Контракти Kite для Python: pydantic-моделі REST і подій, реєстр подій і дозволи.

Моделі — у kite_contracts.models, реєстр — у kite_contracts.registry, мапа
«роль → дозволи» — у kite_contracts.permissions. Усі три модулі згенеровані з
kite-contracts; правити треба схеми, а не цей пакет.

    from kite_contracts import parse_event
    from kite_contracts.registry import EVENT_REGISTRY

    event = parse_event(raw)                 # ShipmentStatusChangedEvent тощо
    topic = EVENT_REGISTRY[event.type].topic
"""

from __future__ import annotations

import json

from pydantic import BaseModel

from kite_contracts.permissions import ROLE_PERMISSIONS, has_permission, permissions_of
from kite_contracts.registry import EVENT_MODELS, EVENT_REGISTRY, TOPICS, EventMeta

__all__ = [
    "EVENT_MODELS",
    "EVENT_REGISTRY",
    "ROLE_PERMISSIONS",
    "TOPICS",
    "EventMeta",
    "UnknownEventTypeError",
    "has_permission",
    "parse_event",
    "permissions_of",
]


class UnknownEventTypeError(ValueError):
    """Тип події не з цієї версії контрактів — споживачу варто підняти kite-contracts."""


def parse_event(raw: str | bytes) -> BaseModel:
    """Розбирає конверт CloudEvents у модель за полем type."""
    event_type = json.loads(raw).get("type")
    model = EVENT_MODELS.get(event_type)
    if model is None:
        raise UnknownEventTypeError(f"невідомий тип події: {event_type!r}")
    return model.model_validate_json(raw)
