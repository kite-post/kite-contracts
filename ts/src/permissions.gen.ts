// Згенеровано з auth/permissions.json командою tools/gen-permissions.py — не правити.

import type { Permission, Role } from "./schema.gen.js";

/** Які дозволи дає кожна роль realm kite (3.2). */
export const kiteRolePermissions: Readonly<Record<Role, readonly Permission[]>> = {
  "CLIENT": ["shipment:create:own", "shipment:read:own", "delivery:manage:own", "claim:create:own", "payment:create:own", "ticket:create:own"],
  "BIZ_OWNER": ["shipment:create:org", "shipment:read:org", "delivery:manage:org", "claim:create:org", "payment:create:own", "ticket:create:own", "org:manage", "org:finance", "api-key:manage"],
  "BIZ_MEMBER": ["shipment:create:org", "shipment:read:org", "delivery:manage:org", "claim:create:org", "ticket:create:own"],
  "OPERATOR": ["shipment:create:on-behalf", "shipment:read:location", "delivery:manage:on-behalf", "scan:branch", "trip:load", "claim:create:on-behalf", "payment:accept-cash"],
  "SORTER": ["shipment:read:limited", "scan:hub", "trip:load", "claim:mark-damage"],
  "SHIFT_MANAGER": ["shipment:read:limited", "scan:hub", "trip:load", "trip:manage", "discrepancy:manage", "claim:mark-damage"],
  "DRIVER": ["shipment:read:number", "trip:load"],
  "DISPATCHER": ["shipment:read:limited", "dispatch:read", "incident:manage"],
  "SUPPORT": ["shipment:read:all", "delivery:manage:all", "claim:review", "ticket:handle", "pii:read"],
  "ADMIN": ["shipment:read:all", "delivery:manage:all", "claim:review", "ticket:handle", "pii:read", "dispatch:read", "incident:manage", "tariff:write", "network:write", "user:manage", "audit:read"],
  "SYSTEM": ["scan:device", "pricing:quote", "network:route"],
};
