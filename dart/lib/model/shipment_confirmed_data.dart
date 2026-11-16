//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentConfirmedData {
  /// Returns a new [ShipmentConfirmedData] instance.
  ShipmentConfirmedData({
    required this.shipmentId,
    required this.trackingNumber,
    required this.priceTotal,
    this.confirmedByCustomerId,
    this.organizationId,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  Money priceTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmedByCustomerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentConfirmedData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.priceTotal == priceTotal &&
    other.confirmedByCustomerId == confirmedByCustomerId &&
    other.organizationId == organizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (priceTotal.hashCode) +
    (confirmedByCustomerId == null ? 0 : confirmedByCustomerId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode);

  @override
  String toString() => 'ShipmentConfirmedData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, priceTotal=$priceTotal, confirmedByCustomerId=$confirmedByCustomerId, organizationId=$organizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
      json[r'priceTotal'] = this.priceTotal;
    if (this.confirmedByCustomerId != null) {
      json[r'confirmedByCustomerId'] = this.confirmedByCustomerId;
    } else {
      json[r'confirmedByCustomerId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentConfirmedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentConfirmedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentConfirmedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentConfirmedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentConfirmedData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        priceTotal: Money.fromJson(json[r'priceTotal'])!,
        confirmedByCustomerId: mapValueOfType<String>(json, r'confirmedByCustomerId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
      );
    }
    return null;
  }

  static List<ShipmentConfirmedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentConfirmedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentConfirmedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentConfirmedData> mapFromJson(dynamic json) {
    final map = <String, ShipmentConfirmedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentConfirmedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentConfirmedData-objects as value to a dart map
  static Map<String, List<ShipmentConfirmedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentConfirmedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentConfirmedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'priceTotal',
  };
}

