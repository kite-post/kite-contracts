//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Роль у realm `kite` Keycloak — усі ролі з 3.1 і службова `SYSTEM`; імена збігаються з ролями realm і claim `realm_access.roles` access-токена. Не плутати з `ActorRole`: той описує лише того, хто виконав дію в подіях (персонал і `SYSTEM`), і є підмножиною цього переліку.
class Role {
  /// Instantiate a new enum with the provided [value].
  const Role._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CLIENT = Role._(r'CLIENT');
  static const BIZ_OWNER = Role._(r'BIZ_OWNER');
  static const BIZ_MEMBER = Role._(r'BIZ_MEMBER');
  static const OPERATOR = Role._(r'OPERATOR');
  static const SORTER = Role._(r'SORTER');
  static const SHIFT_MANAGER = Role._(r'SHIFT_MANAGER');
  static const DRIVER = Role._(r'DRIVER');
  static const DISPATCHER = Role._(r'DISPATCHER');
  static const SUPPORT = Role._(r'SUPPORT');
  static const ADMIN = Role._(r'ADMIN');
  static const SYSTEM = Role._(r'SYSTEM');

  /// List of all possible values in this [enum][Role].
  static const values = <Role>[
    CLIENT,
    BIZ_OWNER,
    BIZ_MEMBER,
    OPERATOR,
    SORTER,
    SHIFT_MANAGER,
    DRIVER,
    DISPATCHER,
    SUPPORT,
    ADMIN,
    SYSTEM,
  ];

  static Role? fromJson(dynamic value) => RoleTypeTransformer().decode(value);

  static List<Role> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Role>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Role.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Role] to String,
/// and [decode] dynamic data back to [Role].
class RoleTypeTransformer {
  factory RoleTypeTransformer() => _instance ??= const RoleTypeTransformer._();

  const RoleTypeTransformer._();

  String encode(Role data) => data.value;

  /// Decodes a [dynamic value][data] to a Role.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Role? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CLIENT': return Role.CLIENT;
        case r'BIZ_OWNER': return Role.BIZ_OWNER;
        case r'BIZ_MEMBER': return Role.BIZ_MEMBER;
        case r'OPERATOR': return Role.OPERATOR;
        case r'SORTER': return Role.SORTER;
        case r'SHIFT_MANAGER': return Role.SHIFT_MANAGER;
        case r'DRIVER': return Role.DRIVER;
        case r'DISPATCHER': return Role.DISPATCHER;
        case r'SUPPORT': return Role.SUPPORT;
        case r'ADMIN': return Role.ADMIN;
        case r'SYSTEM': return Role.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RoleTypeTransformer] instance.
  static RoleTypeTransformer? _instance;
}

