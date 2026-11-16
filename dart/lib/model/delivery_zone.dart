//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class DeliveryZone {
  /// Instantiate a new enum with the provided [value].
  const DeliveryZone._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CITY = DeliveryZone._(r'CITY');
  static const REGION = DeliveryZone._(r'REGION');
  static const COUNTRY = DeliveryZone._(r'COUNTRY');

  /// List of all possible values in this [enum][DeliveryZone].
  static const values = <DeliveryZone>[
    CITY,
    REGION,
    COUNTRY,
  ];

  static DeliveryZone? fromJson(dynamic value) => DeliveryZoneTypeTransformer().decode(value);

  static List<DeliveryZone> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryZone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryZone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliveryZone] to String,
/// and [decode] dynamic data back to [DeliveryZone].
class DeliveryZoneTypeTransformer {
  factory DeliveryZoneTypeTransformer() => _instance ??= const DeliveryZoneTypeTransformer._();

  const DeliveryZoneTypeTransformer._();

  String encode(DeliveryZone data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliveryZone.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliveryZone? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CITY': return DeliveryZone.CITY;
        case r'REGION': return DeliveryZone.REGION;
        case r'COUNTRY': return DeliveryZone.COUNTRY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliveryZoneTypeTransformer] instance.
  static DeliveryZoneTypeTransformer? _instance;
}

