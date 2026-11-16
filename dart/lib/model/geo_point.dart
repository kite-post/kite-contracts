//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class GeoPoint {
  /// Returns a new [GeoPoint] instance.
  GeoPoint({
    required this.lat,
    required this.lon,
  });

  double lat;

  double lon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoPoint &&
    other.lat == lat &&
    other.lon == lon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lat.hashCode) +
    (lon.hashCode);

  @override
  String toString() => 'GeoPoint[lat=$lat, lon=$lon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lat'] = this.lat;
      json[r'lon'] = this.lon;
    return json;
  }

  /// Returns a new [GeoPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GeoPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GeoPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GeoPoint(
        lat: mapValueOfType<double>(json, r'lat')!,
        lon: mapValueOfType<double>(json, r'lon')!,
      );
    }
    return null;
  }

  static List<GeoPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GeoPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GeoPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GeoPoint> mapFromJson(dynamic json) {
    final map = <String, GeoPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GeoPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GeoPoint-objects as value to a dart map
  static Map<String, List<GeoPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GeoPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GeoPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lat',
    'lon',
  };
}

