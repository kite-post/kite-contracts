//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CustomerTrustedPersonChangedData {
  /// Returns a new [CustomerTrustedPersonChangedData] instance.
  CustomerTrustedPersonChangedData({
    required this.customerId,
    required this.trustedPersonId,
    required this.change,
    required this.phoneHash,
  });

  String customerId;

  String trustedPersonId;

  CustomerTrustedPersonChangedDataChangeEnum change;

  /// SHA-256 телефону в hex: події не носять самих номерів (6.2, party_shipment_index)
  String phoneHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerTrustedPersonChangedData &&
    other.customerId == customerId &&
    other.trustedPersonId == trustedPersonId &&
    other.change == change &&
    other.phoneHash == phoneHash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customerId.hashCode) +
    (trustedPersonId.hashCode) +
    (change.hashCode) +
    (phoneHash.hashCode);

  @override
  String toString() => 'CustomerTrustedPersonChangedData[customerId=$customerId, trustedPersonId=$trustedPersonId, change=$change, phoneHash=$phoneHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customerId'] = this.customerId;
      json[r'trustedPersonId'] = this.trustedPersonId;
      json[r'change'] = this.change;
      json[r'phoneHash'] = this.phoneHash;
    return json;
  }

  /// Returns a new [CustomerTrustedPersonChangedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerTrustedPersonChangedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerTrustedPersonChangedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerTrustedPersonChangedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerTrustedPersonChangedData(
        customerId: mapValueOfType<String>(json, r'customerId')!,
        trustedPersonId: mapValueOfType<String>(json, r'trustedPersonId')!,
        change: CustomerTrustedPersonChangedDataChangeEnum.fromJson(json[r'change'])!,
        phoneHash: mapValueOfType<String>(json, r'phoneHash')!,
      );
    }
    return null;
  }

  static List<CustomerTrustedPersonChangedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerTrustedPersonChangedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerTrustedPersonChangedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerTrustedPersonChangedData> mapFromJson(dynamic json) {
    final map = <String, CustomerTrustedPersonChangedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerTrustedPersonChangedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerTrustedPersonChangedData-objects as value to a dart map
  static Map<String, List<CustomerTrustedPersonChangedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerTrustedPersonChangedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerTrustedPersonChangedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customerId',
    'trustedPersonId',
    'change',
    'phoneHash',
  };
}


class CustomerTrustedPersonChangedDataChangeEnum {
  /// Instantiate a new enum with the provided [value].
  const CustomerTrustedPersonChangedDataChangeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ADDED = CustomerTrustedPersonChangedDataChangeEnum._(r'ADDED');
  static const REMOVED = CustomerTrustedPersonChangedDataChangeEnum._(r'REMOVED');

  /// List of all possible values in this [enum][CustomerTrustedPersonChangedDataChangeEnum].
  static const values = <CustomerTrustedPersonChangedDataChangeEnum>[
    ADDED,
    REMOVED,
  ];

  static CustomerTrustedPersonChangedDataChangeEnum? fromJson(dynamic value) => CustomerTrustedPersonChangedDataChangeEnumTypeTransformer().decode(value);

  static List<CustomerTrustedPersonChangedDataChangeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerTrustedPersonChangedDataChangeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerTrustedPersonChangedDataChangeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CustomerTrustedPersonChangedDataChangeEnum] to String,
/// and [decode] dynamic data back to [CustomerTrustedPersonChangedDataChangeEnum].
class CustomerTrustedPersonChangedDataChangeEnumTypeTransformer {
  factory CustomerTrustedPersonChangedDataChangeEnumTypeTransformer() => _instance ??= const CustomerTrustedPersonChangedDataChangeEnumTypeTransformer._();

  const CustomerTrustedPersonChangedDataChangeEnumTypeTransformer._();

  String encode(CustomerTrustedPersonChangedDataChangeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CustomerTrustedPersonChangedDataChangeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CustomerTrustedPersonChangedDataChangeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ADDED': return CustomerTrustedPersonChangedDataChangeEnum.ADDED;
        case r'REMOVED': return CustomerTrustedPersonChangedDataChangeEnum.REMOVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CustomerTrustedPersonChangedDataChangeEnumTypeTransformer] instance.
  static CustomerTrustedPersonChangedDataChangeEnumTypeTransformer? _instance;
}


