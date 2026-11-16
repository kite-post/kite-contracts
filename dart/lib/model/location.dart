//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Location {
  /// Returns a new [Location] instance.
  Location({
    required this.id,
    required this.type,
    required this.code,
    this.name,
    this.city,
    required this.address,
    required this.geo,
    this.maxWeightGrams,
    this.services = const [],
    this.openingHours = const [],
    this.openNow,
    this.freeCellSizes = const [],
  });

  String id;

  LocationType type;

  String code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  Address address;

  GeoPoint geo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxWeightGrams;

  List<LocationService> services;

  List<OpeningHours> openingHours;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? openNow;

  /// Вільні комірки Kite Box за розміром
  List<CellSize> freeCellSizes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Location &&
    other.id == id &&
    other.type == type &&
    other.code == code &&
    other.name == name &&
    other.city == city &&
    other.address == address &&
    other.geo == geo &&
    other.maxWeightGrams == maxWeightGrams &&
    _deepEquality.equals(other.services, services) &&
    _deepEquality.equals(other.openingHours, openingHours) &&
    other.openNow == openNow &&
    _deepEquality.equals(other.freeCellSizes, freeCellSizes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (code.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (address.hashCode) +
    (geo.hashCode) +
    (maxWeightGrams == null ? 0 : maxWeightGrams!.hashCode) +
    (services.hashCode) +
    (openingHours.hashCode) +
    (openNow == null ? 0 : openNow!.hashCode) +
    (freeCellSizes.hashCode);

  @override
  String toString() => 'Location[id=$id, type=$type, code=$code, name=$name, city=$city, address=$address, geo=$geo, maxWeightGrams=$maxWeightGrams, services=$services, openingHours=$openingHours, openNow=$openNow, freeCellSizes=$freeCellSizes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'code'] = this.code;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
      json[r'address'] = this.address;
      json[r'geo'] = this.geo;
    if (this.maxWeightGrams != null) {
      json[r'maxWeightGrams'] = this.maxWeightGrams;
    } else {
      json[r'maxWeightGrams'] = null;
    }
      json[r'services'] = this.services;
      json[r'openingHours'] = this.openingHours;
    if (this.openNow != null) {
      json[r'openNow'] = this.openNow;
    } else {
      json[r'openNow'] = null;
    }
      json[r'freeCellSizes'] = this.freeCellSizes;
    return json;
  }

  /// Returns a new [Location] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Location? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Location[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Location[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Location(
        id: mapValueOfType<String>(json, r'id')!,
        type: LocationType.fromJson(json[r'type'])!,
        code: mapValueOfType<String>(json, r'code')!,
        name: mapValueOfType<String>(json, r'name'),
        city: mapValueOfType<String>(json, r'city'),
        address: Address.fromJson(json[r'address'])!,
        geo: GeoPoint.fromJson(json[r'geo'])!,
        maxWeightGrams: mapValueOfType<int>(json, r'maxWeightGrams'),
        services: LocationService.listFromJson(json[r'services']),
        openingHours: OpeningHours.listFromJson(json[r'openingHours']),
        openNow: mapValueOfType<bool>(json, r'openNow'),
        freeCellSizes: CellSize.listFromJson(json[r'freeCellSizes']),
      );
    }
    return null;
  }

  static List<Location> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Location>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Location.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Location> mapFromJson(dynamic json) {
    final map = <String, Location>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Location.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Location-objects as value to a dart map
  static Map<String, List<Location>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Location>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Location.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'code',
    'address',
    'geo',
  };
}

