//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentRedirectedData {
  /// Returns a new [ShipmentRedirectedData] instance.
  ShipmentRedirectedData({
    required this.shipmentId,
    required this.trackingNumber,
    this.actionId,
    this.fromLocationId,
    required this.toLocationId,
    required this.afterArrival,
    this.price,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  /// delivery_action, що породив переадресацію
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fromLocationId;

  String toLocationId;

  /// true — платна переадресація після прибуття (T10)
  bool afterArrival;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentRedirectedData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.actionId == actionId &&
    other.fromLocationId == fromLocationId &&
    other.toLocationId == toLocationId &&
    other.afterArrival == afterArrival &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (actionId == null ? 0 : actionId!.hashCode) +
    (fromLocationId == null ? 0 : fromLocationId!.hashCode) +
    (toLocationId.hashCode) +
    (afterArrival.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'ShipmentRedirectedData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, actionId=$actionId, fromLocationId=$fromLocationId, toLocationId=$toLocationId, afterArrival=$afterArrival, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
    if (this.actionId != null) {
      json[r'actionId'] = this.actionId;
    } else {
      json[r'actionId'] = null;
    }
    if (this.fromLocationId != null) {
      json[r'fromLocationId'] = this.fromLocationId;
    } else {
      json[r'fromLocationId'] = null;
    }
      json[r'toLocationId'] = this.toLocationId;
      json[r'afterArrival'] = this.afterArrival;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentRedirectedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentRedirectedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentRedirectedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentRedirectedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentRedirectedData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        actionId: mapValueOfType<String>(json, r'actionId'),
        fromLocationId: mapValueOfType<String>(json, r'fromLocationId'),
        toLocationId: mapValueOfType<String>(json, r'toLocationId')!,
        afterArrival: mapValueOfType<bool>(json, r'afterArrival')!,
        price: Money.fromJson(json[r'price']),
      );
    }
    return null;
  }

  static List<ShipmentRedirectedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentRedirectedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentRedirectedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentRedirectedData> mapFromJson(dynamic json) {
    final map = <String, ShipmentRedirectedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentRedirectedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentRedirectedData-objects as value to a dart map
  static Map<String, List<ShipmentRedirectedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentRedirectedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentRedirectedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'toLocationId',
    'afterArrival',
  };
}

