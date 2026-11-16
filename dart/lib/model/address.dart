//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Address {
  /// Returns a new [Address] instance.
  Address({
    required this.city,
    this.cityId,
    required this.street,
    this.building,
    this.apartment,
    this.postalCode,
  });

  String city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityId;

  String street;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? building;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apartment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postalCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Address &&
    other.city == city &&
    other.cityId == cityId &&
    other.street == street &&
    other.building == building &&
    other.apartment == apartment &&
    other.postalCode == postalCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (city.hashCode) +
    (cityId == null ? 0 : cityId!.hashCode) +
    (street.hashCode) +
    (building == null ? 0 : building!.hashCode) +
    (apartment == null ? 0 : apartment!.hashCode) +
    (postalCode == null ? 0 : postalCode!.hashCode);

  @override
  String toString() => 'Address[city=$city, cityId=$cityId, street=$street, building=$building, apartment=$apartment, postalCode=$postalCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'city'] = this.city;
    if (this.cityId != null) {
      json[r'cityId'] = this.cityId;
    } else {
      json[r'cityId'] = null;
    }
      json[r'street'] = this.street;
    if (this.building != null) {
      json[r'building'] = this.building;
    } else {
      json[r'building'] = null;
    }
    if (this.apartment != null) {
      json[r'apartment'] = this.apartment;
    } else {
      json[r'apartment'] = null;
    }
    if (this.postalCode != null) {
      json[r'postalCode'] = this.postalCode;
    } else {
      json[r'postalCode'] = null;
    }
    return json;
  }

  /// Returns a new [Address] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Address? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Address[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Address[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Address(
        city: mapValueOfType<String>(json, r'city')!,
        cityId: mapValueOfType<String>(json, r'cityId'),
        street: mapValueOfType<String>(json, r'street')!,
        building: mapValueOfType<String>(json, r'building'),
        apartment: mapValueOfType<String>(json, r'apartment'),
        postalCode: mapValueOfType<String>(json, r'postalCode'),
      );
    }
    return null;
  }

  static List<Address> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Address>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Address.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Address> mapFromJson(dynamic json) {
    final map = <String, Address>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Address.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Address-objects as value to a dart map
  static Map<String, List<Address>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Address>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Address.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'city',
    'street',
  };
}

