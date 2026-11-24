//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Що сталося в платіжного провайдера. Таймаут 3-D Secure приходить як PAYMENT_FAILED з `failureCode: TIMEOUT`. 
class ProviderPaymentEventType {
  /// Instantiate a new enum with the provided [value].
  const ProviderPaymentEventType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PAYMENT_SUCCEEDED = ProviderPaymentEventType._(r'PAYMENT_SUCCEEDED');
  static const PAYMENT_FAILED = ProviderPaymentEventType._(r'PAYMENT_FAILED');
  static const REFUND_SUCCEEDED = ProviderPaymentEventType._(r'REFUND_SUCCEEDED');
  static const REFUND_FAILED = ProviderPaymentEventType._(r'REFUND_FAILED');

  /// List of all possible values in this [enum][ProviderPaymentEventType].
  static const values = <ProviderPaymentEventType>[
    PAYMENT_SUCCEEDED,
    PAYMENT_FAILED,
    REFUND_SUCCEEDED,
    REFUND_FAILED,
  ];

  static ProviderPaymentEventType? fromJson(dynamic value) => ProviderPaymentEventTypeTypeTransformer().decode(value);

  static List<ProviderPaymentEventType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderPaymentEventType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderPaymentEventType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProviderPaymentEventType] to String,
/// and [decode] dynamic data back to [ProviderPaymentEventType].
class ProviderPaymentEventTypeTypeTransformer {
  factory ProviderPaymentEventTypeTypeTransformer() => _instance ??= const ProviderPaymentEventTypeTypeTransformer._();

  const ProviderPaymentEventTypeTypeTransformer._();

  String encode(ProviderPaymentEventType data) => data.value;

  /// Decodes a [dynamic value][data] to a ProviderPaymentEventType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProviderPaymentEventType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PAYMENT_SUCCEEDED': return ProviderPaymentEventType.PAYMENT_SUCCEEDED;
        case r'PAYMENT_FAILED': return ProviderPaymentEventType.PAYMENT_FAILED;
        case r'REFUND_SUCCEEDED': return ProviderPaymentEventType.REFUND_SUCCEEDED;
        case r'REFUND_FAILED': return ProviderPaymentEventType.REFUND_FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProviderPaymentEventTypeTypeTransformer] instance.
  static ProviderPaymentEventTypeTypeTransformer? _instance;
}

