//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Дозвіл (3.2): <ресурс>:<дія>[:<чиє>]. Keycloak видає лише роль, а які дозволи вона дає — мапа з auth/permissions.json.
class Permission {
  /// Instantiate a new enum with the provided [value].
  const Permission._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SHIPMENT_CREATE_OWN = Permission._(r'shipment:create:own');
  static const SHIPMENT_CREATE_ORG = Permission._(r'shipment:create:org');
  static const SHIPMENT_CREATE_ON_BEHALF = Permission._(r'shipment:create:on-behalf');
  static const SHIPMENT_READ_OWN = Permission._(r'shipment:read:own');
  static const SHIPMENT_READ_ORG = Permission._(r'shipment:read:org');
  static const SHIPMENT_READ_LOCATION = Permission._(r'shipment:read:location');
  static const SHIPMENT_READ_LIMITED = Permission._(r'shipment:read:limited');
  static const SHIPMENT_READ_NUMBER = Permission._(r'shipment:read:number');
  static const SHIPMENT_READ_ALL = Permission._(r'shipment:read:all');
  static const DELIVERY_MANAGE_OWN = Permission._(r'delivery:manage:own');
  static const DELIVERY_MANAGE_ORG = Permission._(r'delivery:manage:org');
  static const DELIVERY_MANAGE_ON_BEHALF = Permission._(r'delivery:manage:on-behalf');
  static const DELIVERY_MANAGE_ALL = Permission._(r'delivery:manage:all');
  static const SCAN_BRANCH = Permission._(r'scan:branch');
  static const SCAN_HUB = Permission._(r'scan:hub');
  static const SCAN_DEVICE = Permission._(r'scan:device');
  static const TRIP_LOAD = Permission._(r'trip:load');
  static const TRIP_MANAGE = Permission._(r'trip:manage');
  static const DISCREPANCY_MANAGE = Permission._(r'discrepancy:manage');
  static const CLAIM_CREATE_OWN = Permission._(r'claim:create:own');
  static const CLAIM_CREATE_ORG = Permission._(r'claim:create:org');
  static const CLAIM_CREATE_ON_BEHALF = Permission._(r'claim:create:on-behalf');
  static const CLAIM_MARK_DAMAGE = Permission._(r'claim:mark-damage');
  static const CLAIM_REVIEW = Permission._(r'claim:review');
  static const PAYMENT_CREATE_OWN = Permission._(r'payment:create:own');
  static const PAYMENT_ACCEPT_CASH = Permission._(r'payment:accept-cash');
  static const TICKET_CREATE_OWN = Permission._(r'ticket:create:own');
  static const TICKET_HANDLE = Permission._(r'ticket:handle');
  static const PII_READ = Permission._(r'pii:read');
  static const DISPATCH_READ = Permission._(r'dispatch:read');
  static const INCIDENT_MANAGE = Permission._(r'incident:manage');
  static const TARIFF_WRITE = Permission._(r'tariff:write');
  static const NETWORK_WRITE = Permission._(r'network:write');
  static const USER_MANAGE = Permission._(r'user:manage');
  static const AUDIT_READ = Permission._(r'audit:read');
  static const ORG_MANAGE = Permission._(r'org:manage');
  static const ORG_FINANCE = Permission._(r'org:finance');
  static const API_KEY_MANAGE = Permission._(r'api-key:manage');
  static const PRICING_QUOTE = Permission._(r'pricing:quote');
  static const NETWORK_ROUTE = Permission._(r'network:route');

  /// List of all possible values in this [enum][Permission].
  static const values = <Permission>[
    SHIPMENT_CREATE_OWN,
    SHIPMENT_CREATE_ORG,
    SHIPMENT_CREATE_ON_BEHALF,
    SHIPMENT_READ_OWN,
    SHIPMENT_READ_ORG,
    SHIPMENT_READ_LOCATION,
    SHIPMENT_READ_LIMITED,
    SHIPMENT_READ_NUMBER,
    SHIPMENT_READ_ALL,
    DELIVERY_MANAGE_OWN,
    DELIVERY_MANAGE_ORG,
    DELIVERY_MANAGE_ON_BEHALF,
    DELIVERY_MANAGE_ALL,
    SCAN_BRANCH,
    SCAN_HUB,
    SCAN_DEVICE,
    TRIP_LOAD,
    TRIP_MANAGE,
    DISCREPANCY_MANAGE,
    CLAIM_CREATE_OWN,
    CLAIM_CREATE_ORG,
    CLAIM_CREATE_ON_BEHALF,
    CLAIM_MARK_DAMAGE,
    CLAIM_REVIEW,
    PAYMENT_CREATE_OWN,
    PAYMENT_ACCEPT_CASH,
    TICKET_CREATE_OWN,
    TICKET_HANDLE,
    PII_READ,
    DISPATCH_READ,
    INCIDENT_MANAGE,
    TARIFF_WRITE,
    NETWORK_WRITE,
    USER_MANAGE,
    AUDIT_READ,
    ORG_MANAGE,
    ORG_FINANCE,
    API_KEY_MANAGE,
    PRICING_QUOTE,
    NETWORK_ROUTE,
  ];

  static Permission? fromJson(dynamic value) => PermissionTypeTransformer().decode(value);

  static List<Permission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Permission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Permission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Permission] to String,
/// and [decode] dynamic data back to [Permission].
class PermissionTypeTransformer {
  factory PermissionTypeTransformer() => _instance ??= const PermissionTypeTransformer._();

  const PermissionTypeTransformer._();

  String encode(Permission data) => data.value;

  /// Decodes a [dynamic value][data] to a Permission.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Permission? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'shipment:create:own': return Permission.SHIPMENT_CREATE_OWN;
        case r'shipment:create:org': return Permission.SHIPMENT_CREATE_ORG;
        case r'shipment:create:on-behalf': return Permission.SHIPMENT_CREATE_ON_BEHALF;
        case r'shipment:read:own': return Permission.SHIPMENT_READ_OWN;
        case r'shipment:read:org': return Permission.SHIPMENT_READ_ORG;
        case r'shipment:read:location': return Permission.SHIPMENT_READ_LOCATION;
        case r'shipment:read:limited': return Permission.SHIPMENT_READ_LIMITED;
        case r'shipment:read:number': return Permission.SHIPMENT_READ_NUMBER;
        case r'shipment:read:all': return Permission.SHIPMENT_READ_ALL;
        case r'delivery:manage:own': return Permission.DELIVERY_MANAGE_OWN;
        case r'delivery:manage:org': return Permission.DELIVERY_MANAGE_ORG;
        case r'delivery:manage:on-behalf': return Permission.DELIVERY_MANAGE_ON_BEHALF;
        case r'delivery:manage:all': return Permission.DELIVERY_MANAGE_ALL;
        case r'scan:branch': return Permission.SCAN_BRANCH;
        case r'scan:hub': return Permission.SCAN_HUB;
        case r'scan:device': return Permission.SCAN_DEVICE;
        case r'trip:load': return Permission.TRIP_LOAD;
        case r'trip:manage': return Permission.TRIP_MANAGE;
        case r'discrepancy:manage': return Permission.DISCREPANCY_MANAGE;
        case r'claim:create:own': return Permission.CLAIM_CREATE_OWN;
        case r'claim:create:org': return Permission.CLAIM_CREATE_ORG;
        case r'claim:create:on-behalf': return Permission.CLAIM_CREATE_ON_BEHALF;
        case r'claim:mark-damage': return Permission.CLAIM_MARK_DAMAGE;
        case r'claim:review': return Permission.CLAIM_REVIEW;
        case r'payment:create:own': return Permission.PAYMENT_CREATE_OWN;
        case r'payment:accept-cash': return Permission.PAYMENT_ACCEPT_CASH;
        case r'ticket:create:own': return Permission.TICKET_CREATE_OWN;
        case r'ticket:handle': return Permission.TICKET_HANDLE;
        case r'pii:read': return Permission.PII_READ;
        case r'dispatch:read': return Permission.DISPATCH_READ;
        case r'incident:manage': return Permission.INCIDENT_MANAGE;
        case r'tariff:write': return Permission.TARIFF_WRITE;
        case r'network:write': return Permission.NETWORK_WRITE;
        case r'user:manage': return Permission.USER_MANAGE;
        case r'audit:read': return Permission.AUDIT_READ;
        case r'org:manage': return Permission.ORG_MANAGE;
        case r'org:finance': return Permission.ORG_FINANCE;
        case r'api-key:manage': return Permission.API_KEY_MANAGE;
        case r'pricing:quote': return Permission.PRICING_QUOTE;
        case r'network:route': return Permission.NETWORK_ROUTE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PermissionTypeTransformer] instance.
  static PermissionTypeTransformer? _instance;
}

