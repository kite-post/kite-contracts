//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Customer {
  /// Returns a new [Customer] instance.
  Customer({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.middleName,
    this.email,
    required this.locale,
    this.theme,
    this.quietHoursFrom,
    this.quietHoursTo,
    this.phones = const [],
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  Locale locale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Theme? theme;

  String? quietHoursFrom;

  String? quietHoursTo;

  List<CustomerPhone> phones;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Customer &&
    other.id == id &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.middleName == middleName &&
    other.email == email &&
    other.locale == locale &&
    other.theme == theme &&
    other.quietHoursFrom == quietHoursFrom &&
    other.quietHoursTo == quietHoursTo &&
    _deepEquality.equals(other.phones, phones);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (locale.hashCode) +
    (theme == null ? 0 : theme!.hashCode) +
    (quietHoursFrom == null ? 0 : quietHoursFrom!.hashCode) +
    (quietHoursTo == null ? 0 : quietHoursTo!.hashCode) +
    (phones.hashCode);

  @override
  String toString() => 'Customer[id=$id, firstName=$firstName, lastName=$lastName, middleName=$middleName, email=$email, locale=$locale, theme=$theme, quietHoursFrom=$quietHoursFrom, quietHoursTo=$quietHoursTo, phones=$phones]';

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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
      json[r'locale'] = this.locale;
    if (this.theme != null) {
      json[r'theme'] = this.theme;
    } else {
      json[r'theme'] = null;
    }
    if (this.quietHoursFrom != null) {
      json[r'quietHoursFrom'] = this.quietHoursFrom;
    } else {
      json[r'quietHoursFrom'] = null;
    }
    if (this.quietHoursTo != null) {
      json[r'quietHoursTo'] = this.quietHoursTo;
    } else {
      json[r'quietHoursTo'] = null;
    }
      json[r'phones'] = this.phones;
    return json;
  }

  /// Returns a new [Customer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Customer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Customer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Customer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Customer(
        id: mapValueOfType<String>(json, r'id')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        middleName: mapValueOfType<String>(json, r'middleName'),
        email: mapValueOfType<String>(json, r'email'),
        locale: Locale.fromJson(json[r'locale'])!,
        theme: Theme.fromJson(json[r'theme']),
        quietHoursFrom: mapValueOfType<String>(json, r'quietHoursFrom'),
        quietHoursTo: mapValueOfType<String>(json, r'quietHoursTo'),
        phones: CustomerPhone.listFromJson(json[r'phones']),
      );
    }
    return null;
  }

  static List<Customer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Customer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Customer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Customer> mapFromJson(dynamic json) {
    final map = <String, Customer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Customer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Customer-objects as value to a dart map
  static Map<String, List<Customer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Customer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Customer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'firstName',
    'lastName',
    'locale',
  };
}

