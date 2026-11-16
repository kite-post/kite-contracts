//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Додаткові послуги (бізнес-модель, «Джерела доходу»)
class ServiceCode {
  /// Instantiate a new enum with the provided [value].
  const ServiceCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COD = ServiceCode._(r'COD');
  static const DECLARED_VALUE = ServiceCode._(r'DECLARED_VALUE');
  static const PACKAGING = ServiceCode._(r'PACKAGING');
  static const PAID_STORAGE = ServiceCode._(r'PAID_STORAGE');
  static const REDIRECT_AFTER_ARRIVAL = ServiceCode._(r'REDIRECT_AFTER_ARRIVAL');

  /// List of all possible values in this [enum][ServiceCode].
  static const values = <ServiceCode>[
    COD,
    DECLARED_VALUE,
    PACKAGING,
    PAID_STORAGE,
    REDIRECT_AFTER_ARRIVAL,
  ];

  static ServiceCode? fromJson(dynamic value) => ServiceCodeTypeTransformer().decode(value);

  static List<ServiceCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceCode] to String,
/// and [decode] dynamic data back to [ServiceCode].
class ServiceCodeTypeTransformer {
  factory ServiceCodeTypeTransformer() => _instance ??= const ServiceCodeTypeTransformer._();

  const ServiceCodeTypeTransformer._();

  String encode(ServiceCode data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COD': return ServiceCode.COD;
        case r'DECLARED_VALUE': return ServiceCode.DECLARED_VALUE;
        case r'PACKAGING': return ServiceCode.PACKAGING;
        case r'PAID_STORAGE': return ServiceCode.PAID_STORAGE;
        case r'REDIRECT_AFTER_ARRIVAL': return ServiceCode.REDIRECT_AFTER_ARRIVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceCodeTypeTransformer] instance.
  static ServiceCodeTypeTransformer? _instance;
}

