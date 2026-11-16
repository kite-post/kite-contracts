//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LockerStorageExpiredData {
  /// Returns a new [LockerStorageExpiredData] instance.
  LockerStorageExpiredData({
    required this.lockerId,
    this.locationId,
    required this.cellCode,
    this.shipmentId,
    this.bookingId,
    this.extendedOnce,
    this.moveToLocationId,
  });

  String lockerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationId;

  String cellCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bookingId;

  /// Чи було продовження на 24 години
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? extendedOnce;

  /// Відділення, куди поїде посилка
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? moveToLocationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LockerStorageExpiredData &&
    other.lockerId == lockerId &&
    other.locationId == locationId &&
    other.cellCode == cellCode &&
    other.shipmentId == shipmentId &&
    other.bookingId == bookingId &&
    other.extendedOnce == extendedOnce &&
    other.moveToLocationId == moveToLocationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lockerId.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (cellCode.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (bookingId == null ? 0 : bookingId!.hashCode) +
    (extendedOnce == null ? 0 : extendedOnce!.hashCode) +
    (moveToLocationId == null ? 0 : moveToLocationId!.hashCode);

  @override
  String toString() => 'LockerStorageExpiredData[lockerId=$lockerId, locationId=$locationId, cellCode=$cellCode, shipmentId=$shipmentId, bookingId=$bookingId, extendedOnce=$extendedOnce, moveToLocationId=$moveToLocationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lockerId'] = this.lockerId;
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
      json[r'cellCode'] = this.cellCode;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.bookingId != null) {
      json[r'bookingId'] = this.bookingId;
    } else {
      json[r'bookingId'] = null;
    }
    if (this.extendedOnce != null) {
      json[r'extendedOnce'] = this.extendedOnce;
    } else {
      json[r'extendedOnce'] = null;
    }
    if (this.moveToLocationId != null) {
      json[r'moveToLocationId'] = this.moveToLocationId;
    } else {
      json[r'moveToLocationId'] = null;
    }
    return json;
  }

  /// Returns a new [LockerStorageExpiredData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LockerStorageExpiredData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LockerStorageExpiredData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LockerStorageExpiredData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LockerStorageExpiredData(
        lockerId: mapValueOfType<String>(json, r'lockerId')!,
        locationId: mapValueOfType<String>(json, r'locationId'),
        cellCode: mapValueOfType<String>(json, r'cellCode')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        bookingId: mapValueOfType<String>(json, r'bookingId'),
        extendedOnce: mapValueOfType<bool>(json, r'extendedOnce'),
        moveToLocationId: mapValueOfType<String>(json, r'moveToLocationId'),
      );
    }
    return null;
  }

  static List<LockerStorageExpiredData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerStorageExpiredData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerStorageExpiredData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LockerStorageExpiredData> mapFromJson(dynamic json) {
    final map = <String, LockerStorageExpiredData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LockerStorageExpiredData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LockerStorageExpiredData-objects as value to a dart map
  static Map<String, List<LockerStorageExpiredData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LockerStorageExpiredData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LockerStorageExpiredData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lockerId',
    'cellCode',
  };
}

