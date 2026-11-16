//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class FieldError {
  /// Returns a new [FieldError] instance.
  FieldError({
    required this.field,
    required this.code,
    this.message,
  });

  String field;

  String code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FieldError &&
    other.field == field &&
    other.code == code &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'FieldError[field=$field, code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'code'] = this.code;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [FieldError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FieldError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FieldError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FieldError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FieldError(
        field: mapValueOfType<String>(json, r'field')!,
        code: mapValueOfType<String>(json, r'code')!,
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<FieldError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FieldError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FieldError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FieldError> mapFromJson(dynamic json) {
    final map = <String, FieldError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FieldError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FieldError-objects as value to a dart map
  static Map<String, List<FieldError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FieldError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FieldError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'code',
  };
}

