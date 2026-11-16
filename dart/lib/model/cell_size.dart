//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class CellSize {
  /// Instantiate a new enum with the provided [value].
  const CellSize._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const S = CellSize._(r'S');
  static const M = CellSize._(r'M');
  static const L = CellSize._(r'L');

  /// List of all possible values in this [enum][CellSize].
  static const values = <CellSize>[
    S,
    M,
    L,
  ];

  static CellSize? fromJson(dynamic value) => CellSizeTypeTransformer().decode(value);

  static List<CellSize> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CellSize>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CellSize.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CellSize] to String,
/// and [decode] dynamic data back to [CellSize].
class CellSizeTypeTransformer {
  factory CellSizeTypeTransformer() => _instance ??= const CellSizeTypeTransformer._();

  const CellSizeTypeTransformer._();

  String encode(CellSize data) => data.value;

  /// Decodes a [dynamic value][data] to a CellSize.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CellSize? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'S': return CellSize.S;
        case r'M': return CellSize.M;
        case r'L': return CellSize.L;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CellSizeTypeTransformer] instance.
  static CellSizeTypeTransformer? _instance;
}

