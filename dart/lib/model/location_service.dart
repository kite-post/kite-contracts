//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class LocationService {
  /// Instantiate a new enum with the provided [value].
  const LocationService._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SEND = LocationService._(r'SEND');
  static const RECEIVE = LocationService._(r'RECEIVE');
  static const COD = LocationService._(r'COD');
  static const CARGO = LocationService._(r'CARGO');
  static const PACKAGING = LocationService._(r'PACKAGING');
  static const STORAGE = LocationService._(r'STORAGE');

  /// List of all possible values in this [enum][LocationService].
  static const values = <LocationService>[
    SEND,
    RECEIVE,
    COD,
    CARGO,
    PACKAGING,
    STORAGE,
  ];

  static LocationService? fromJson(dynamic value) => LocationServiceTypeTransformer().decode(value);

  static List<LocationService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocationService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocationService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LocationService] to String,
/// and [decode] dynamic data back to [LocationService].
class LocationServiceTypeTransformer {
  factory LocationServiceTypeTransformer() => _instance ??= const LocationServiceTypeTransformer._();

  const LocationServiceTypeTransformer._();

  String encode(LocationService data) => data.value;

  /// Decodes a [dynamic value][data] to a LocationService.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LocationService? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SEND': return LocationService.SEND;
        case r'RECEIVE': return LocationService.RECEIVE;
        case r'COD': return LocationService.COD;
        case r'CARGO': return LocationService.CARGO;
        case r'PACKAGING': return LocationService.PACKAGING;
        case r'STORAGE': return LocationService.STORAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LocationServiceTypeTransformer] instance.
  static LocationServiceTypeTransformer? _instance;
}

