//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class Theme {
  /// Instantiate a new enum with the provided [value].
  const Theme._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LIGHT = Theme._(r'LIGHT');
  static const DARK = Theme._(r'DARK');
  static const SYSTEM = Theme._(r'SYSTEM');

  /// List of all possible values in this [enum][Theme].
  static const values = <Theme>[
    LIGHT,
    DARK,
    SYSTEM,
  ];

  static Theme? fromJson(dynamic value) => ThemeTypeTransformer().decode(value);

  static List<Theme> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Theme>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Theme.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Theme] to String,
/// and [decode] dynamic data back to [Theme].
class ThemeTypeTransformer {
  factory ThemeTypeTransformer() => _instance ??= const ThemeTypeTransformer._();

  const ThemeTypeTransformer._();

  String encode(Theme data) => data.value;

  /// Decodes a [dynamic value][data] to a Theme.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Theme? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LIGHT': return Theme.LIGHT;
        case r'DARK': return Theme.DARK;
        case r'SYSTEM': return Theme.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ThemeTypeTransformer] instance.
  static ThemeTypeTransformer? _instance;
}

