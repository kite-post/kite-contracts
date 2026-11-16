//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CustomerPhone {
  /// Returns a new [CustomerPhone] instance.
  CustomerPhone({
    required this.id,
    required this.phone,
    required this.primary,
    this.verifiedAt,
  });

  String id;

  /// Телефон у E.164
  String phone;

  bool primary;

  DateTime? verifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerPhone &&
    other.id == id &&
    other.phone == phone &&
    other.primary == primary &&
    other.verifiedAt == verifiedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (phone.hashCode) +
    (primary.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode);

  @override
  String toString() => 'CustomerPhone[id=$id, phone=$phone, primary=$primary, verifiedAt=$verifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'phone'] = this.phone;
      json[r'primary'] = this.primary;
    if (this.verifiedAt != null) {
      json[r'verifiedAt'] = this.verifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'verifiedAt'] = null;
    }
    return json;
  }

  /// Returns a new [CustomerPhone] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerPhone? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerPhone[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerPhone[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerPhone(
        id: mapValueOfType<String>(json, r'id')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        primary: mapValueOfType<bool>(json, r'primary')!,
        verifiedAt: mapDateTime(json, r'verifiedAt', r''),
      );
    }
    return null;
  }

  static List<CustomerPhone> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerPhone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerPhone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerPhone> mapFromJson(dynamic json) {
    final map = <String, CustomerPhone>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerPhone.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerPhone-objects as value to a dart map
  static Map<String, List<CustomerPhone>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerPhone>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerPhone.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'phone',
    'primary',
  };
}

