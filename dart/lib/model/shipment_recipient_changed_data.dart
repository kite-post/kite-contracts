//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentRecipientChangedData {
  /// Returns a new [ShipmentRecipientChangedData] instance.
  ShipmentRecipientChangedData({
    required this.shipmentId,
    required this.trackingNumber,
    this.actionId,
    required this.newRecipientPhoneHash,
    this.trustedPersonId,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionId;

  /// SHA-256 телефону в hex: події не носять самих номерів (6.2, party_shipment_index)
  String newRecipientPhoneHash;

  /// Якщо отримання передано довіреній особі
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trustedPersonId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentRecipientChangedData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.actionId == actionId &&
    other.newRecipientPhoneHash == newRecipientPhoneHash &&
    other.trustedPersonId == trustedPersonId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (actionId == null ? 0 : actionId!.hashCode) +
    (newRecipientPhoneHash.hashCode) +
    (trustedPersonId == null ? 0 : trustedPersonId!.hashCode);

  @override
  String toString() => 'ShipmentRecipientChangedData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, actionId=$actionId, newRecipientPhoneHash=$newRecipientPhoneHash, trustedPersonId=$trustedPersonId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
    if (this.actionId != null) {
      json[r'actionId'] = this.actionId;
    } else {
      json[r'actionId'] = null;
    }
      json[r'newRecipientPhoneHash'] = this.newRecipientPhoneHash;
    if (this.trustedPersonId != null) {
      json[r'trustedPersonId'] = this.trustedPersonId;
    } else {
      json[r'trustedPersonId'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentRecipientChangedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentRecipientChangedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentRecipientChangedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentRecipientChangedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentRecipientChangedData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        actionId: mapValueOfType<String>(json, r'actionId'),
        newRecipientPhoneHash: mapValueOfType<String>(json, r'newRecipientPhoneHash')!,
        trustedPersonId: mapValueOfType<String>(json, r'trustedPersonId'),
      );
    }
    return null;
  }

  static List<ShipmentRecipientChangedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentRecipientChangedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentRecipientChangedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentRecipientChangedData> mapFromJson(dynamic json) {
    final map = <String, ShipmentRecipientChangedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentRecipientChangedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentRecipientChangedData-objects as value to a dart map
  static Map<String, List<ShipmentRecipientChangedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentRecipientChangedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentRecipientChangedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'newRecipientPhoneHash',
  };
}

