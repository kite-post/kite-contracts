//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class OpeningHours {
  /// Returns a new [OpeningHours] instance.
  OpeningHours({
    required this.dayOfWeek,
    required this.opensAt,
    required this.closesAt,
  });

  /// Minimum value: 1
  /// Maximum value: 7
  int dayOfWeek;

  String opensAt;

  String closesAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpeningHours &&
    other.dayOfWeek == dayOfWeek &&
    other.opensAt == opensAt &&
    other.closesAt == closesAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dayOfWeek.hashCode) +
    (opensAt.hashCode) +
    (closesAt.hashCode);

  @override
  String toString() => 'OpeningHours[dayOfWeek=$dayOfWeek, opensAt=$opensAt, closesAt=$closesAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dayOfWeek'] = this.dayOfWeek;
      json[r'opensAt'] = this.opensAt;
      json[r'closesAt'] = this.closesAt;
    return json;
  }

  /// Returns a new [OpeningHours] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpeningHours? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpeningHours[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpeningHours[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpeningHours(
        dayOfWeek: mapValueOfType<int>(json, r'dayOfWeek')!,
        opensAt: mapValueOfType<String>(json, r'opensAt')!,
        closesAt: mapValueOfType<String>(json, r'closesAt')!,
      );
    }
    return null;
  }

  static List<OpeningHours> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpeningHours>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpeningHours.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpeningHours> mapFromJson(dynamic json) {
    final map = <String, OpeningHours>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpeningHours.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpeningHours-objects as value to a dart map
  static Map<String, List<OpeningHours>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpeningHours>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpeningHours.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dayOfWeek',
    'opensAt',
    'closesAt',
  };
}

