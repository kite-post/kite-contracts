//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ScanRecordedData {
  /// Returns a new [ScanRecordedData] instance.
  ScanRecordedData({
    required this.scanId,
    required this.barcode,
    this.shipmentId,
    this.parcelId,
    required this.operation,
    required this.locationId,
    required this.deviceId,
    this.sessionId,
    this.userId,
    required this.outcome,
    this.warningCode,
    this.weightGrams,
    this.dimensions,
    this.sortHint,
  });

  /// Згенерований на телефоні — ключ ідемпотентності (10.2, п. 5)
  String scanId;

  /// Штрих-код місця — номер із суфіксом місця (10.1)
  String barcode;

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
  String? parcelId;

  ScanOperation operation;

  String locationId;

  String deviceId;

  /// Сесія пейрингу з Kite Ops
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ScanOutcome outcome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScanWarningCode? warningCode;

  /// Фактична вага з вагів на касі
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weightGrams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Dimensions? dimensions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScanRecordedDataSortHint? sortHint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanRecordedData &&
    other.scanId == scanId &&
    other.barcode == barcode &&
    other.shipmentId == shipmentId &&
    other.parcelId == parcelId &&
    other.operation == operation &&
    other.locationId == locationId &&
    other.deviceId == deviceId &&
    other.sessionId == sessionId &&
    other.userId == userId &&
    other.outcome == outcome &&
    other.warningCode == warningCode &&
    other.weightGrams == weightGrams &&
    other.dimensions == dimensions &&
    other.sortHint == sortHint;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scanId.hashCode) +
    (barcode.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (parcelId == null ? 0 : parcelId!.hashCode) +
    (operation.hashCode) +
    (locationId.hashCode) +
    (deviceId.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (outcome.hashCode) +
    (warningCode == null ? 0 : warningCode!.hashCode) +
    (weightGrams == null ? 0 : weightGrams!.hashCode) +
    (dimensions == null ? 0 : dimensions!.hashCode) +
    (sortHint == null ? 0 : sortHint!.hashCode);

  @override
  String toString() => 'ScanRecordedData[scanId=$scanId, barcode=$barcode, shipmentId=$shipmentId, parcelId=$parcelId, operation=$operation, locationId=$locationId, deviceId=$deviceId, sessionId=$sessionId, userId=$userId, outcome=$outcome, warningCode=$warningCode, weightGrams=$weightGrams, dimensions=$dimensions, sortHint=$sortHint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scanId'] = this.scanId;
      json[r'barcode'] = this.barcode;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.parcelId != null) {
      json[r'parcelId'] = this.parcelId;
    } else {
      json[r'parcelId'] = null;
    }
      json[r'operation'] = this.operation;
      json[r'locationId'] = this.locationId;
      json[r'deviceId'] = this.deviceId;
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
      json[r'outcome'] = this.outcome;
    if (this.warningCode != null) {
      json[r'warningCode'] = this.warningCode;
    } else {
      json[r'warningCode'] = null;
    }
    if (this.weightGrams != null) {
      json[r'weightGrams'] = this.weightGrams;
    } else {
      json[r'weightGrams'] = null;
    }
    if (this.dimensions != null) {
      json[r'dimensions'] = this.dimensions;
    } else {
      json[r'dimensions'] = null;
    }
    if (this.sortHint != null) {
      json[r'sortHint'] = this.sortHint;
    } else {
      json[r'sortHint'] = null;
    }
    return json;
  }

  /// Returns a new [ScanRecordedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanRecordedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanRecordedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanRecordedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanRecordedData(
        scanId: mapValueOfType<String>(json, r'scanId')!,
        barcode: mapValueOfType<String>(json, r'barcode')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        parcelId: mapValueOfType<String>(json, r'parcelId'),
        operation: ScanOperation.fromJson(json[r'operation'])!,
        locationId: mapValueOfType<String>(json, r'locationId')!,
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        userId: mapValueOfType<String>(json, r'userId'),
        outcome: ScanOutcome.fromJson(json[r'outcome'])!,
        warningCode: ScanWarningCode.fromJson(json[r'warningCode']),
        weightGrams: mapValueOfType<int>(json, r'weightGrams'),
        dimensions: Dimensions.fromJson(json[r'dimensions']),
        sortHint: ScanRecordedDataSortHint.fromJson(json[r'sortHint']),
      );
    }
    return null;
  }

  static List<ScanRecordedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanRecordedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanRecordedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanRecordedData> mapFromJson(dynamic json) {
    final map = <String, ScanRecordedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanRecordedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanRecordedData-objects as value to a dart map
  static Map<String, List<ScanRecordedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanRecordedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanRecordedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scanId',
    'barcode',
    'operation',
    'locationId',
    'deviceId',
    'outcome',
  };
}

