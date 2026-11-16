//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CustomerPhoneVerifiedData {
  /// Returns a new [CustomerPhoneVerifiedData] instance.
  CustomerPhoneVerifiedData({
    required this.customerId,
    required this.phoneHash,
    this.primary,
  });

  String customerId;

  /// SHA-256 телефону в hex: події не носять самих номерів (6.2, party_shipment_index)
  String phoneHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? primary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerPhoneVerifiedData &&
    other.customerId == customerId &&
    other.phoneHash == phoneHash &&
    other.primary == primary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customerId.hashCode) +
    (phoneHash.hashCode) +
    (primary == null ? 0 : primary!.hashCode);

  @override
  String toString() => 'CustomerPhoneVerifiedData[customerId=$customerId, phoneHash=$phoneHash, primary=$primary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customerId'] = this.customerId;
      json[r'phoneHash'] = this.phoneHash;
    if (this.primary != null) {
      json[r'primary'] = this.primary;
    } else {
      json[r'primary'] = null;
    }
    return json;
  }

  /// Returns a new [CustomerPhoneVerifiedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerPhoneVerifiedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerPhoneVerifiedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerPhoneVerifiedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerPhoneVerifiedData(
        customerId: mapValueOfType<String>(json, r'customerId')!,
        phoneHash: mapValueOfType<String>(json, r'phoneHash')!,
        primary: mapValueOfType<bool>(json, r'primary'),
      );
    }
    return null;
  }

  static List<CustomerPhoneVerifiedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerPhoneVerifiedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerPhoneVerifiedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerPhoneVerifiedData> mapFromJson(dynamic json) {
    final map = <String, CustomerPhoneVerifiedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerPhoneVerifiedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerPhoneVerifiedData-objects as value to a dart map
  static Map<String, List<CustomerPhoneVerifiedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerPhoneVerifiedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerPhoneVerifiedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customerId',
    'phoneHash',
  };
}

