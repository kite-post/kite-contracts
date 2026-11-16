//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class PaymentStatus {
  /// Instantiate a new enum with the provided [value].
  const PaymentStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = PaymentStatus._(r'PENDING');
  static const aWAITING3DS = PaymentStatus._(r'AWAITING_3DS');
  static const SUCCEEDED = PaymentStatus._(r'SUCCEEDED');
  static const FAILED = PaymentStatus._(r'FAILED');
  static const REFUNDED = PaymentStatus._(r'REFUNDED');

  /// List of all possible values in this [enum][PaymentStatus].
  static const values = <PaymentStatus>[
    PENDING,
    aWAITING3DS,
    SUCCEEDED,
    FAILED,
    REFUNDED,
  ];

  static PaymentStatus? fromJson(dynamic value) => PaymentStatusTypeTransformer().decode(value);

  static List<PaymentStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentStatus] to String,
/// and [decode] dynamic data back to [PaymentStatus].
class PaymentStatusTypeTransformer {
  factory PaymentStatusTypeTransformer() => _instance ??= const PaymentStatusTypeTransformer._();

  const PaymentStatusTypeTransformer._();

  String encode(PaymentStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a PaymentStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return PaymentStatus.PENDING;
        case r'AWAITING_3DS': return PaymentStatus.aWAITING3DS;
        case r'SUCCEEDED': return PaymentStatus.SUCCEEDED;
        case r'FAILED': return PaymentStatus.FAILED;
        case r'REFUNDED': return PaymentStatus.REFUNDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaymentStatusTypeTransformer] instance.
  static PaymentStatusTypeTransformer? _instance;
}

