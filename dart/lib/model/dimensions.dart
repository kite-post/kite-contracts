//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Dimensions {
  /// Returns a new [Dimensions] instance.
  Dimensions({
    required this.lengthMm,
    required this.widthMm,
    required this.heightMm,
  });

  /// Minimum value: 1
  int lengthMm;

  /// Minimum value: 1
  int widthMm;

  /// Minimum value: 1
  int heightMm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Dimensions &&
    other.lengthMm == lengthMm &&
    other.widthMm == widthMm &&
    other.heightMm == heightMm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lengthMm.hashCode) +
    (widthMm.hashCode) +
    (heightMm.hashCode);

  @override
  String toString() => 'Dimensions[lengthMm=$lengthMm, widthMm=$widthMm, heightMm=$heightMm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lengthMm'] = this.lengthMm;
      json[r'widthMm'] = this.widthMm;
      json[r'heightMm'] = this.heightMm;
    return json;
  }

  /// Returns a new [Dimensions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Dimensions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Dimensions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Dimensions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Dimensions(
        lengthMm: mapValueOfType<int>(json, r'lengthMm')!,
        widthMm: mapValueOfType<int>(json, r'widthMm')!,
        heightMm: mapValueOfType<int>(json, r'heightMm')!,
      );
    }
    return null;
  }

  static List<Dimensions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Dimensions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Dimensions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Dimensions> mapFromJson(dynamic json) {
    final map = <String, Dimensions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Dimensions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Dimensions-objects as value to a dart map
  static Map<String, List<Dimensions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Dimensions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Dimensions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lengthMm',
    'widthMm',
    'heightMm',
  };
}

