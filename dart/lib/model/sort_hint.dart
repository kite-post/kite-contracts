//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class SortHint {
  /// Returns a new [SortHint] instance.
  SortHint({
    required this.line,
    required this.direction,
    this.nextLocation,
    this.unitCode,
  });

  String line;

  String direction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocationRef? nextLocation;

  String? unitCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SortHint &&
    other.line == line &&
    other.direction == direction &&
    other.nextLocation == nextLocation &&
    other.unitCode == unitCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (line.hashCode) +
    (direction.hashCode) +
    (nextLocation == null ? 0 : nextLocation!.hashCode) +
    (unitCode == null ? 0 : unitCode!.hashCode);

  @override
  String toString() => 'SortHint[line=$line, direction=$direction, nextLocation=$nextLocation, unitCode=$unitCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'line'] = this.line;
      json[r'direction'] = this.direction;
    if (this.nextLocation != null) {
      json[r'nextLocation'] = this.nextLocation;
    } else {
      json[r'nextLocation'] = null;
    }
    if (this.unitCode != null) {
      json[r'unitCode'] = this.unitCode;
    } else {
      json[r'unitCode'] = null;
    }
    return json;
  }

  /// Returns a new [SortHint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SortHint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SortHint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SortHint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SortHint(
        line: mapValueOfType<String>(json, r'line')!,
        direction: mapValueOfType<String>(json, r'direction')!,
        nextLocation: LocationRef.fromJson(json[r'nextLocation']),
        unitCode: mapValueOfType<String>(json, r'unitCode'),
      );
    }
    return null;
  }

  static List<SortHint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortHint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortHint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SortHint> mapFromJson(dynamic json) {
    final map = <String, SortHint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortHint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SortHint-objects as value to a dart map
  static Map<String, List<SortHint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SortHint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SortHint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'line',
    'direction',
  };
}

