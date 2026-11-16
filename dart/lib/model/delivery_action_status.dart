//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class DeliveryActionStatus {
  /// Instantiate a new enum with the provided [value].
  const DeliveryActionStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REQUESTED = DeliveryActionStatus._(r'REQUESTED');
  static const AWAITING_PAYMENT = DeliveryActionStatus._(r'AWAITING_PAYMENT');
  static const APPLIED = DeliveryActionStatus._(r'APPLIED');
  static const REJECTED = DeliveryActionStatus._(r'REJECTED');

  /// List of all possible values in this [enum][DeliveryActionStatus].
  static const values = <DeliveryActionStatus>[
    REQUESTED,
    AWAITING_PAYMENT,
    APPLIED,
    REJECTED,
  ];

  static DeliveryActionStatus? fromJson(dynamic value) => DeliveryActionStatusTypeTransformer().decode(value);

  static List<DeliveryActionStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryActionStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryActionStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliveryActionStatus] to String,
/// and [decode] dynamic data back to [DeliveryActionStatus].
class DeliveryActionStatusTypeTransformer {
  factory DeliveryActionStatusTypeTransformer() => _instance ??= const DeliveryActionStatusTypeTransformer._();

  const DeliveryActionStatusTypeTransformer._();

  String encode(DeliveryActionStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliveryActionStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliveryActionStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REQUESTED': return DeliveryActionStatus.REQUESTED;
        case r'AWAITING_PAYMENT': return DeliveryActionStatus.AWAITING_PAYMENT;
        case r'APPLIED': return DeliveryActionStatus.APPLIED;
        case r'REJECTED': return DeliveryActionStatus.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliveryActionStatusTypeTransformer] instance.
  static DeliveryActionStatusTypeTransformer? _instance;
}

