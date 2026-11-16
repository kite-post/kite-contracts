//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class PaymentSubject {
  /// Instantiate a new enum with the provided [value].
  const PaymentSubject._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SHIPMENT = PaymentSubject._(r'SHIPMENT');
  static const DELIVERY_ACTION = PaymentSubject._(r'DELIVERY_ACTION');
  static const STORAGE_BOOKING = PaymentSubject._(r'STORAGE_BOOKING');
  static const PAID_STORAGE = PaymentSubject._(r'PAID_STORAGE');
  static const COD = PaymentSubject._(r'COD');

  /// List of all possible values in this [enum][PaymentSubject].
  static const values = <PaymentSubject>[
    SHIPMENT,
    DELIVERY_ACTION,
    STORAGE_BOOKING,
    PAID_STORAGE,
    COD,
  ];

  static PaymentSubject? fromJson(dynamic value) => PaymentSubjectTypeTransformer().decode(value);

  static List<PaymentSubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentSubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentSubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentSubject] to String,
/// and [decode] dynamic data back to [PaymentSubject].
class PaymentSubjectTypeTransformer {
  factory PaymentSubjectTypeTransformer() => _instance ??= const PaymentSubjectTypeTransformer._();

  const PaymentSubjectTypeTransformer._();

  String encode(PaymentSubject data) => data.value;

  /// Decodes a [dynamic value][data] to a PaymentSubject.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentSubject? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SHIPMENT': return PaymentSubject.SHIPMENT;
        case r'DELIVERY_ACTION': return PaymentSubject.DELIVERY_ACTION;
        case r'STORAGE_BOOKING': return PaymentSubject.STORAGE_BOOKING;
        case r'PAID_STORAGE': return PaymentSubject.PAID_STORAGE;
        case r'COD': return PaymentSubject.COD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaymentSubjectTypeTransformer] instance.
  static PaymentSubjectTypeTransformer? _instance;
}

