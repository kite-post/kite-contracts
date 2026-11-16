//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CustomerPhoneRemovedData {
  /// Returns a new [CustomerPhoneRemovedData] instance.
  CustomerPhoneRemovedData({
    required this.customerId,
    required this.phoneHash,
  });

  String customerId;

  /// SHA-256 телефону в hex: події не носять самих номерів (6.2, party_shipment_index)
  String phoneHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerPhoneRemovedData &&
    other.customerId == customerId &&
    other.phoneHash == phoneHash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customerId.hashCode) +
    (phoneHash.hashCode);

  @override
  String toString() => 'CustomerPhoneRemovedData[customerId=$customerId, phoneHash=$phoneHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customerId'] = this.customerId;
      json[r'phoneHash'] = this.phoneHash;
    return json;
  }

  /// Returns a new [CustomerPhoneRemovedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerPhoneRemovedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerPhoneRemovedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerPhoneRemovedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerPhoneRemovedData(
        customerId: mapValueOfType<String>(json, r'customerId')!,
        phoneHash: mapValueOfType<String>(json, r'phoneHash')!,
      );
    }
    return null;
  }

  static List<CustomerPhoneRemovedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerPhoneRemovedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerPhoneRemovedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerPhoneRemovedData> mapFromJson(dynamic json) {
    final map = <String, CustomerPhoneRemovedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerPhoneRemovedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerPhoneRemovedData-objects as value to a dart map
  static Map<String, List<CustomerPhoneRemovedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerPhoneRemovedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerPhoneRemovedData.listFromJson(entry.value, growable: growable,);
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

