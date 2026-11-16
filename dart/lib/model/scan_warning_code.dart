//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ScanWarningCode {
  /// Instantiate a new enum with the provided [value].
  const ScanWarningCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DUPLICATE = ScanWarningCode._(r'DUPLICATE');
  static const WRONG_HUB = ScanWarningCode._(r'WRONG_HUB');
  static const MISSORT = ScanWarningCode._(r'MISSORT');
  static const UNKNOWN_BARCODE = ScanWarningCode._(r'UNKNOWN_BARCODE');
  static const NOT_EXPECTED = ScanWarningCode._(r'NOT_EXPECTED');
  static const UNIT_CLOSED = ScanWarningCode._(r'UNIT_CLOSED');

  /// List of all possible values in this [enum][ScanWarningCode].
  static const values = <ScanWarningCode>[
    DUPLICATE,
    WRONG_HUB,
    MISSORT,
    UNKNOWN_BARCODE,
    NOT_EXPECTED,
    UNIT_CLOSED,
  ];

  static ScanWarningCode? fromJson(dynamic value) => ScanWarningCodeTypeTransformer().decode(value);

  static List<ScanWarningCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanWarningCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanWarningCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScanWarningCode] to String,
/// and [decode] dynamic data back to [ScanWarningCode].
class ScanWarningCodeTypeTransformer {
  factory ScanWarningCodeTypeTransformer() => _instance ??= const ScanWarningCodeTypeTransformer._();

  const ScanWarningCodeTypeTransformer._();

  String encode(ScanWarningCode data) => data.value;

  /// Decodes a [dynamic value][data] to a ScanWarningCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScanWarningCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DUPLICATE': return ScanWarningCode.DUPLICATE;
        case r'WRONG_HUB': return ScanWarningCode.WRONG_HUB;
        case r'MISSORT': return ScanWarningCode.MISSORT;
        case r'UNKNOWN_BARCODE': return ScanWarningCode.UNKNOWN_BARCODE;
        case r'NOT_EXPECTED': return ScanWarningCode.NOT_EXPECTED;
        case r'UNIT_CLOSED': return ScanWarningCode.UNIT_CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScanWarningCodeTypeTransformer] instance.
  static ScanWarningCodeTypeTransformer? _instance;
}

