//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class TrustedPerson {
  /// Returns a new [TrustedPerson] instance.
  TrustedPerson({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.phone,
  });

  String id;

  String firstName;

  String lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? middleName;

  /// Телефон у E.164
  String phone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustedPerson &&
    other.id == id &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.middleName == middleName &&
    other.phone == phone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (phone.hashCode);

  @override
  String toString() => 'TrustedPerson[id=$id, firstName=$firstName, lastName=$lastName, middleName=$middleName, phone=$phone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
    if (this.middleName != null) {
      json[r'middleName'] = this.middleName;
    } else {
      json[r'middleName'] = null;
    }
      json[r'phone'] = this.phone;
    return json;
  }

  /// Returns a new [TrustedPerson] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustedPerson? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustedPerson[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustedPerson[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustedPerson(
        id: mapValueOfType<String>(json, r'id')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        middleName: mapValueOfType<String>(json, r'middleName'),
        phone: mapValueOfType<String>(json, r'phone')!,
      );
    }
    return null;
  }

  static List<TrustedPerson> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustedPerson>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustedPerson.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustedPerson> mapFromJson(dynamic json) {
    final map = <String, TrustedPerson>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustedPerson.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustedPerson-objects as value to a dart map
  static Map<String, List<TrustedPerson>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustedPerson>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustedPerson.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'firstName',
    'lastName',
    'phone',
  };
}

