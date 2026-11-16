//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class PayerType {
  /// Instantiate a new enum with the provided [value].
  const PayerType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SENDER = PayerType._(r'SENDER');
  static const RECIPIENT = PayerType._(r'RECIPIENT');
  static const BUSINESS = PayerType._(r'BUSINESS');

  /// List of all possible values in this [enum][PayerType].
  static const values = <PayerType>[
    SENDER,
    RECIPIENT,
    BUSINESS,
  ];

  static PayerType? fromJson(dynamic value) => PayerTypeTypeTransformer().decode(value);

  static List<PayerType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PayerType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PayerType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PayerType] to String,
/// and [decode] dynamic data back to [PayerType].
class PayerTypeTypeTransformer {
  factory PayerTypeTypeTransformer() => _instance ??= const PayerTypeTypeTransformer._();

  const PayerTypeTypeTransformer._();

  String encode(PayerType data) => data.value;

  /// Decodes a [dynamic value][data] to a PayerType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PayerType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SENDER': return PayerType.SENDER;
        case r'RECIPIENT': return PayerType.RECIPIENT;
        case r'BUSINESS': return PayerType.BUSINESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PayerTypeTypeTransformer] instance.
  static PayerTypeTypeTransformer? _instance;
}

