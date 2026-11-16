//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ScanUnitScannedData {
  /// Returns a new [ScanUnitScannedData] instance.
  ScanUnitScannedData({
    required this.scanId,
    required this.unitCode,
    required this.operation,
    required this.locationId,
    required this.deviceId,
    this.userId,
    this.tripId,
    this.shipmentIds = const [],
    this.outcome,
    this.warningCode,
  });

  String scanId;

  /// Код мішка або контейнера: BG/CT + 10 цифр (10.1)
  String unitCode;

  ScanOperation operation;

  String locationId;

  String deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// Якщо мішок сканують у рейс
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tripId;

  /// Вміст мішка на момент скану — навмисно всередині події
  List<String> shipmentIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScanOutcome? outcome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScanWarningCode? warningCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanUnitScannedData &&
    other.scanId == scanId &&
    other.unitCode == unitCode &&
    other.operation == operation &&
    other.locationId == locationId &&
    other.deviceId == deviceId &&
    other.userId == userId &&
    other.tripId == tripId &&
    _deepEquality.equals(other.shipmentIds, shipmentIds) &&
    other.outcome == outcome &&
    other.warningCode == warningCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scanId.hashCode) +
    (unitCode.hashCode) +
    (operation.hashCode) +
    (locationId.hashCode) +
    (deviceId.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (tripId == null ? 0 : tripId!.hashCode) +
    (shipmentIds.hashCode) +
    (outcome == null ? 0 : outcome!.hashCode) +
    (warningCode == null ? 0 : warningCode!.hashCode);

  @override
  String toString() => 'ScanUnitScannedData[scanId=$scanId, unitCode=$unitCode, operation=$operation, locationId=$locationId, deviceId=$deviceId, userId=$userId, tripId=$tripId, shipmentIds=$shipmentIds, outcome=$outcome, warningCode=$warningCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scanId'] = this.scanId;
      json[r'unitCode'] = this.unitCode;
      json[r'operation'] = this.operation;
      json[r'locationId'] = this.locationId;
      json[r'deviceId'] = this.deviceId;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.tripId != null) {
      json[r'tripId'] = this.tripId;
    } else {
      json[r'tripId'] = null;
    }
      json[r'shipmentIds'] = this.shipmentIds;
    if (this.outcome != null) {
      json[r'outcome'] = this.outcome;
    } else {
      json[r'outcome'] = null;
    }
    if (this.warningCode != null) {
      json[r'warningCode'] = this.warningCode;
    } else {
      json[r'warningCode'] = null;
    }
    return json;
  }

  /// Returns a new [ScanUnitScannedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanUnitScannedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanUnitScannedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanUnitScannedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanUnitScannedData(
        scanId: mapValueOfType<String>(json, r'scanId')!,
        unitCode: mapValueOfType<String>(json, r'unitCode')!,
        operation: ScanOperation.fromJson(json[r'operation'])!,
        locationId: mapValueOfType<String>(json, r'locationId')!,
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        userId: mapValueOfType<String>(json, r'userId'),
        tripId: mapValueOfType<String>(json, r'tripId'),
        shipmentIds: json[r'shipmentIds'] is Iterable
            ? (json[r'shipmentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        outcome: ScanOutcome.fromJson(json[r'outcome']),
        warningCode: ScanWarningCode.fromJson(json[r'warningCode']),
      );
    }
    return null;
  }

  static List<ScanUnitScannedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanUnitScannedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanUnitScannedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanUnitScannedData> mapFromJson(dynamic json) {
    final map = <String, ScanUnitScannedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanUnitScannedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanUnitScannedData-objects as value to a dart map
  static Map<String, List<ScanUnitScannedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanUnitScannedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanUnitScannedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scanId',
    'unitCode',
    'operation',
    'locationId',
    'deviceId',
    'shipmentIds',
  };
}

