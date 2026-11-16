//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Роль персоналу, що виконала дію (9.5)
class ActorRole {
  /// Instantiate a new enum with the provided [value].
  const ActorRole._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPERATOR = ActorRole._(r'OPERATOR');
  static const SORTER = ActorRole._(r'SORTER');
  static const DRIVER = ActorRole._(r'DRIVER');
  static const SHIFT_MANAGER = ActorRole._(r'SHIFT_MANAGER');
  static const DISPATCHER = ActorRole._(r'DISPATCHER');
  static const SUPPORT = ActorRole._(r'SUPPORT');
  static const ADMIN = ActorRole._(r'ADMIN');
  static const SYSTEM = ActorRole._(r'SYSTEM');

  /// List of all possible values in this [enum][ActorRole].
  static const values = <ActorRole>[
    OPERATOR,
    SORTER,
    DRIVER,
    SHIFT_MANAGER,
    DISPATCHER,
    SUPPORT,
    ADMIN,
    SYSTEM,
  ];

  static ActorRole? fromJson(dynamic value) => ActorRoleTypeTransformer().decode(value);

  static List<ActorRole> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActorRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActorRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ActorRole] to String,
/// and [decode] dynamic data back to [ActorRole].
class ActorRoleTypeTransformer {
  factory ActorRoleTypeTransformer() => _instance ??= const ActorRoleTypeTransformer._();

  const ActorRoleTypeTransformer._();

  String encode(ActorRole data) => data.value;

  /// Decodes a [dynamic value][data] to a ActorRole.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ActorRole? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPERATOR': return ActorRole.OPERATOR;
        case r'SORTER': return ActorRole.SORTER;
        case r'DRIVER': return ActorRole.DRIVER;
        case r'SHIFT_MANAGER': return ActorRole.SHIFT_MANAGER;
        case r'DISPATCHER': return ActorRole.DISPATCHER;
        case r'SUPPORT': return ActorRole.SUPPORT;
        case r'ADMIN': return ActorRole.ADMIN;
        case r'SYSTEM': return ActorRole.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ActorRoleTypeTransformer] instance.
  static ActorRoleTypeTransformer? _instance;
}

