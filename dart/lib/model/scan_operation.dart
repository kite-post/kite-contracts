//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Режими роботи сканера (10.2, п. 4)
class ScanOperation {
  /// Instantiate a new enum with the provided [value].
  const ScanOperation._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACCEPT = ScanOperation._(r'ACCEPT');
  static const UNLOAD = ScanOperation._(r'UNLOAD');
  static const SORT = ScanOperation._(r'SORT');
  static const FILL_UNIT = ScanOperation._(r'FILL_UNIT');
  static const LOAD = ScanOperation._(r'LOAD');
  static const HANDOVER = ScanOperation._(r'HANDOVER');

  /// List of all possible values in this [enum][ScanOperation].
  static const values = <ScanOperation>[
    ACCEPT,
    UNLOAD,
    SORT,
    FILL_UNIT,
    LOAD,
    HANDOVER,
  ];

  static ScanOperation? fromJson(dynamic value) => ScanOperationTypeTransformer().decode(value);

  static List<ScanOperation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanOperation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanOperation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScanOperation] to String,
/// and [decode] dynamic data back to [ScanOperation].
class ScanOperationTypeTransformer {
  factory ScanOperationTypeTransformer() => _instance ??= const ScanOperationTypeTransformer._();

  const ScanOperationTypeTransformer._();

  String encode(ScanOperation data) => data.value;

  /// Decodes a [dynamic value][data] to a ScanOperation.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScanOperation? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACCEPT': return ScanOperation.ACCEPT;
        case r'UNLOAD': return ScanOperation.UNLOAD;
        case r'SORT': return ScanOperation.SORT;
        case r'FILL_UNIT': return ScanOperation.FILL_UNIT;
        case r'LOAD': return ScanOperation.LOAD;
        case r'HANDOVER': return ScanOperation.HANDOVER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScanOperationTypeTransformer] instance.
  static ScanOperationTypeTransformer? _instance;
}

