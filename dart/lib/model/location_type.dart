//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Типи точок мережі (6.2, `location`)
class LocationType {
  /// Instantiate a new enum with the provided [value].
  const LocationType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BRANCH = LocationType._(r'BRANCH');
  static const FREIGHT_BRANCH = LocationType._(r'FREIGHT_BRANCH');
  static const KITE_BOX = LocationType._(r'KITE_BOX');
  static const REGIONAL_HUB = LocationType._(r'REGIONAL_HUB');
  static const TRUNK_HUB = LocationType._(r'TRUNK_HUB');

  /// List of all possible values in this [enum][LocationType].
  static const values = <LocationType>[
    BRANCH,
    FREIGHT_BRANCH,
    KITE_BOX,
    REGIONAL_HUB,
    TRUNK_HUB,
  ];

  static LocationType? fromJson(dynamic value) => LocationTypeTypeTransformer().decode(value);

  static List<LocationType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocationType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocationType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LocationType] to String,
/// and [decode] dynamic data back to [LocationType].
class LocationTypeTypeTransformer {
  factory LocationTypeTypeTransformer() => _instance ??= const LocationTypeTypeTransformer._();

  const LocationTypeTypeTransformer._();

  String encode(LocationType data) => data.value;

  /// Decodes a [dynamic value][data] to a LocationType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LocationType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BRANCH': return LocationType.BRANCH;
        case r'FREIGHT_BRANCH': return LocationType.FREIGHT_BRANCH;
        case r'KITE_BOX': return LocationType.KITE_BOX;
        case r'REGIONAL_HUB': return LocationType.REGIONAL_HUB;
        case r'TRUNK_HUB': return LocationType.TRUNK_HUB;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LocationTypeTypeTransformer] instance.
  static LocationTypeTypeTransformer? _instance;
}

