//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Причина відмови провайдера — для *_FAILED
class ProviderFailureCode {
  /// Instantiate a new enum with the provided [value].
  const ProviderFailureCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DECLINED = ProviderFailureCode._(r'DECLINED');
  static const INSUFFICIENT_FUNDS = ProviderFailureCode._(r'INSUFFICIENT_FUNDS');
  static const THREE_DS_FAILED = ProviderFailureCode._(r'THREE_DS_FAILED');
  static const TIMEOUT = ProviderFailureCode._(r'TIMEOUT');

  /// List of all possible values in this [enum][ProviderFailureCode].
  static const values = <ProviderFailureCode>[
    DECLINED,
    INSUFFICIENT_FUNDS,
    THREE_DS_FAILED,
    TIMEOUT,
  ];

  static ProviderFailureCode? fromJson(dynamic value) => ProviderFailureCodeTypeTransformer().decode(value);

  static List<ProviderFailureCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderFailureCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderFailureCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProviderFailureCode] to String,
/// and [decode] dynamic data back to [ProviderFailureCode].
class ProviderFailureCodeTypeTransformer {
  factory ProviderFailureCodeTypeTransformer() => _instance ??= const ProviderFailureCodeTypeTransformer._();

  const ProviderFailureCodeTypeTransformer._();

  String encode(ProviderFailureCode data) => data.value;

  /// Decodes a [dynamic value][data] to a ProviderFailureCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProviderFailureCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DECLINED': return ProviderFailureCode.DECLINED;
        case r'INSUFFICIENT_FUNDS': return ProviderFailureCode.INSUFFICIENT_FUNDS;
        case r'THREE_DS_FAILED': return ProviderFailureCode.THREE_DS_FAILED;
        case r'TIMEOUT': return ProviderFailureCode.TIMEOUT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProviderFailureCodeTypeTransformer] instance.
  static ProviderFailureCodeTypeTransformer? _instance;
}

