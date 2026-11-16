//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Дії керування доставкою (7.4)
class DeliveryActionType {
  /// Instantiate a new enum with the provided [value].
  const DeliveryActionType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const redirect = DeliveryActionType._(r'redirect');
  static const hold = DeliveryActionType._(r'hold');
  static const changeRecipient = DeliveryActionType._(r'change-recipient');
  static const extendStorage = DeliveryActionType._(r'extend-storage');
  static const refuse = DeliveryActionType._(r'refuse');

  /// List of all possible values in this [enum][DeliveryActionType].
  static const values = <DeliveryActionType>[
    redirect,
    hold,
    changeRecipient,
    extendStorage,
    refuse,
  ];

  static DeliveryActionType? fromJson(dynamic value) => DeliveryActionTypeTypeTransformer().decode(value);

  static List<DeliveryActionType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryActionType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryActionType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliveryActionType] to String,
/// and [decode] dynamic data back to [DeliveryActionType].
class DeliveryActionTypeTypeTransformer {
  factory DeliveryActionTypeTypeTransformer() => _instance ??= const DeliveryActionTypeTypeTransformer._();

  const DeliveryActionTypeTypeTransformer._();

  String encode(DeliveryActionType data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliveryActionType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliveryActionType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'redirect': return DeliveryActionType.redirect;
        case r'hold': return DeliveryActionType.hold;
        case r'change-recipient': return DeliveryActionType.changeRecipient;
        case r'extend-storage': return DeliveryActionType.extendStorage;
        case r'refuse': return DeliveryActionType.refuse;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliveryActionTypeTypeTransformer] instance.
  static DeliveryActionTypeTypeTransformer? _instance;
}

