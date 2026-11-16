//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Party {
  /// Returns a new [Party] instance.
  Party({
    this.customerId,
    this.organizationId,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.phone,
    this.email,
  });

  String? customerId;

  String? organizationId;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Party &&
    other.customerId == customerId &&
    other.organizationId == organizationId &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.middleName == middleName &&
    other.phone == phone &&
    other.email == email;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customerId == null ? 0 : customerId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (phone.hashCode) +
    (email == null ? 0 : email!.hashCode);

  @override
  String toString() => 'Party[customerId=$customerId, organizationId=$organizationId, firstName=$firstName, lastName=$lastName, middleName=$middleName, phone=$phone, email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customerId != null) {
      json[r'customerId'] = this.customerId;
    } else {
      json[r'customerId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
    if (this.middleName != null) {
      json[r'middleName'] = this.middleName;
    } else {
      json[r'middleName'] = null;
    }
      json[r'phone'] = this.phone;
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    return json;
  }

  /// Returns a new [Party] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Party? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Party[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Party[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Party(
        customerId: mapValueOfType<String>(json, r'customerId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        middleName: mapValueOfType<String>(json, r'middleName'),
        phone: mapValueOfType<String>(json, r'phone')!,
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<Party> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Party>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Party.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Party> mapFromJson(dynamic json) {
    final map = <String, Party>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Party.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Party-objects as value to a dart map
  static Map<String, List<Party>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Party>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Party.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'firstName',
    'lastName',
    'phone',
  };
}

