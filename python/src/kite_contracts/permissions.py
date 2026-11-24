"""Мапа «роль → дозволи» realm kite (3.2) і перевірка дозволу.

Згенеровано з auth/permissions.json командою tools/gen-permissions.py — не правити.
"""

from __future__ import annotations

from collections.abc import Iterable, Mapping
from typing import Final

from kite_contracts.models import Permission, Role

ROLE_PERMISSIONS: Final[Mapping[Role, frozenset[Permission]]] = {
    Role.CLIENT: frozenset(
        {
            Permission.SHIPMENT_CREATE_OWN,
            Permission.SHIPMENT_READ_OWN,
            Permission.DELIVERY_MANAGE_OWN,
            Permission.CLAIM_CREATE_OWN,
            Permission.PAYMENT_CREATE_OWN,
            Permission.TICKET_CREATE_OWN,
        }
    ),
    Role.BIZ_OWNER: frozenset(
        {
            Permission.SHIPMENT_CREATE_ORG,
            Permission.SHIPMENT_READ_ORG,
            Permission.DELIVERY_MANAGE_ORG,
            Permission.CLAIM_CREATE_ORG,
            Permission.PAYMENT_CREATE_OWN,
            Permission.TICKET_CREATE_OWN,
            Permission.ORG_MANAGE,
            Permission.ORG_FINANCE,
            Permission.API_KEY_MANAGE,
        }
    ),
    Role.BIZ_MEMBER: frozenset(
        {
            Permission.SHIPMENT_CREATE_ORG,
            Permission.SHIPMENT_READ_ORG,
            Permission.DELIVERY_MANAGE_ORG,
            Permission.CLAIM_CREATE_ORG,
            Permission.TICKET_CREATE_OWN,
        }
    ),
    Role.OPERATOR: frozenset(
        {
            Permission.SHIPMENT_CREATE_ON_BEHALF,
            Permission.SHIPMENT_READ_LOCATION,
            Permission.DELIVERY_MANAGE_ON_BEHALF,
            Permission.SCAN_BRANCH,
            Permission.TRIP_LOAD,
            Permission.CLAIM_CREATE_ON_BEHALF,
            Permission.PAYMENT_ACCEPT_CASH,
        }
    ),
    Role.SORTER: frozenset(
        {
            Permission.SHIPMENT_READ_LIMITED,
            Permission.SCAN_HUB,
            Permission.TRIP_LOAD,
            Permission.CLAIM_MARK_DAMAGE,
        }
    ),
    Role.SHIFT_MANAGER: frozenset(
        {
            Permission.SHIPMENT_READ_LIMITED,
            Permission.SCAN_HUB,
            Permission.TRIP_LOAD,
            Permission.TRIP_MANAGE,
            Permission.DISCREPANCY_MANAGE,
            Permission.CLAIM_MARK_DAMAGE,
        }
    ),
    Role.DRIVER: frozenset({Permission.SHIPMENT_READ_NUMBER, Permission.TRIP_LOAD}),
    Role.DISPATCHER: frozenset(
        {
            Permission.SHIPMENT_READ_LIMITED,
            Permission.DISPATCH_READ,
            Permission.INCIDENT_MANAGE,
        }
    ),
    Role.SUPPORT: frozenset(
        {
            Permission.SHIPMENT_READ_ALL,
            Permission.DELIVERY_MANAGE_ALL,
            Permission.CLAIM_REVIEW,
            Permission.TICKET_HANDLE,
            Permission.PII_READ,
        }
    ),
    Role.ADMIN: frozenset(
        {
            Permission.SHIPMENT_READ_ALL,
            Permission.DELIVERY_MANAGE_ALL,
            Permission.CLAIM_REVIEW,
            Permission.TICKET_HANDLE,
            Permission.PII_READ,
            Permission.DISPATCH_READ,
            Permission.INCIDENT_MANAGE,
            Permission.TARIFF_WRITE,
            Permission.NETWORK_WRITE,
            Permission.USER_MANAGE,
            Permission.AUDIT_READ,
        }
    ),
    Role.SYSTEM: frozenset(
        {Permission.SCAN_DEVICE, Permission.PRICING_QUOTE, Permission.NETWORK_ROUTE}
    ),
}


def permissions_of(roles: Iterable[str]) -> frozenset[Permission]:
    """Усі дозволи, які дають ролі з realm_access.roles; незнайомі ролі нічого не дають."""
    out: set[Permission] = set()
    for name in roles:
        try:
            role = Role(name)
        except ValueError:
            continue
        out |= ROLE_PERMISSIONS.get(role, frozenset())
    return frozenset(out)


def has_permission(roles: Iterable[str], permission: Permission) -> bool:
    """Чи дає хоч одна з ролей дозвіл."""
    return permission in permissions_of(roles)
