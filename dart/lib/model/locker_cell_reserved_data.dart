//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LockerCellReservedData {
  /// Returns a new [LockerCellReservedData] instance.
  LockerCellReservedData({
    required this.lockerId,
    required this.locationId,
    required this.cellCode,
    required this.size,
    this.shipmentId,
    this.bookingId,
    required this.expiresAt,
  });

  String lockerId;

  String locationId;

  /// Код комірки {код поштомату}-{A01} (10.1)
  String cellCode;

  CellSize size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  /// Якщо це камера зберігання
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bookingId;

  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LockerCellReservedData &&
    other.lockerId == lockerId &&
    other.locationId == locationId &&
    other.cellCode == cellCode &&
    other.size == size &&
    other.shipmentId == shipmentId &&
    other.bookingId == bookingId &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lockerId.hashCode) +
    (locationId.hashCode) +
    (cellCode.hashCode) +
    (size.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (bookingId == null ? 0 : bookingId!.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'LockerCellReservedData[lockerId=$lockerId, locationId=$locationId, cellCode=$cellCode, size=$size, shipmentId=$shipmentId, bookingId=$bookingId, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lockerId'] = this.lockerId;
      json[r'locationId'] = this.locationId;
      json[r'cellCode'] = this.cellCode;
      json[r'size'] = this.size;
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
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [LockerCellReservedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LockerCellReservedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LockerCellReservedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LockerCellReservedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LockerCellReservedData(
        lockerId: mapValueOfType<String>(json, r'lockerId')!,
        locationId: mapValueOfType<String>(json, r'locationId')!,
        cellCode: mapValueOfType<String>(json, r'cellCode')!,
        size: CellSize.fromJson(json[r'size'])!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        bookingId: mapValueOfType<String>(json, r'bookingId'),
        expiresAt: mapDateTime(json, r'expiresAt', r'')!,
      );
    }
    return null;
  }

  static List<LockerCellReservedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerCellReservedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerCellReservedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LockerCellReservedData> mapFromJson(dynamic json) {
    final map = <String, LockerCellReservedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LockerCellReservedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LockerCellReservedData-objects as value to a dart map
  static Map<String, List<LockerCellReservedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LockerCellReservedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LockerCellReservedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lockerId',
    'locationId',
    'cellCode',
    'size',
    'expiresAt',
  };
}

