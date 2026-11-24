// Згенеровано з auth/permissions.json командою tools/gen-permissions.py — не правити.

import 'api.dart';

/// Які дозволи дає кожна роль realm kite (3.2), за іменем ролі з токена.
const Map<String, Set<String>> kiteRolePermissions = <String, Set<String>>{
  'CLIENT': <String>{'shipment:create:own', 'shipment:read:own', 'delivery:manage:own', 'claim:create:own', 'payment:create:own', 'ticket:create:own'},
  'BIZ_OWNER': <String>{'shipment:create:org', 'shipment:read:org', 'delivery:manage:org', 'claim:create:org', 'payment:create:own', 'ticket:create:own', 'org:manage', 'org:finance', 'api-key:manage'},
  'BIZ_MEMBER': <String>{'shipment:create:org', 'shipment:read:org', 'delivery:manage:org', 'claim:create:org', 'ticket:create:own'},
  'OPERATOR': <String>{'shipment:create:on-behalf', 'shipment:read:location', 'delivery:manage:on-behalf', 'scan:branch', 'trip:load', 'claim:create:on-behalf', 'payment:accept-cash'},
  'SORTER': <String>{'shipment:read:limited', 'scan:hub', 'trip:load', 'claim:mark-damage'},
  'SHIFT_MANAGER': <String>{'shipment:read:limited', 'scan:hub', 'trip:load', 'trip:manage', 'discrepancy:manage', 'claim:mark-damage'},
  'DRIVER': <String>{'shipment:read:number', 'trip:load'},
  'DISPATCHER': <String>{'shipment:read:limited', 'dispatch:read', 'incident:manage'},
  'SUPPORT': <String>{'shipment:read:all', 'delivery:manage:all', 'claim:review', 'ticket:handle', 'pii:read'},
  'ADMIN': <String>{'shipment:read:all', 'delivery:manage:all', 'claim:review', 'ticket:handle', 'pii:read', 'dispatch:read', 'incident:manage', 'tariff:write', 'network:write', 'user:manage', 'audit:read'},
  'SYSTEM': <String>{'scan:device', 'pricing:quote', 'network:route'},
};

/// Чи дає хоч одна з ролей дозвіл. Ролі — як у `realm_access.roles`;
/// незнайомі (default-roles-kite тощо) нічого не дають.
bool hasPermission(Iterable<String> roles, Permission permission) =>
    roles.any((role) => kiteRolePermissions[role]?.contains(permission.value) ?? false);

/// Усі дозволи, які дають ролі.
Set<Permission> permissionsOf(Iterable<String> roles) => <Permission>{
      for (final role in roles)
        for (final name in kiteRolePermissions[role] ?? const <String>{})
          Permission.fromJson(name)!,
    };
