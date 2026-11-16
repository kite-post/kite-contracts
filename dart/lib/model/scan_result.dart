//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ScanResult {
  /// Returns a new [ScanResult] instance.
  ScanResult({
    required this.scanId,
    required this.outcome,
    this.warningCode,
    this.message,
    this.shipmentId,
    this.statusAfter,
    this.sortHint,
  });

  String scanId;

  ScanOutcome outcome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScanWarningCode? warningCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  String? shipmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShipmentStatus? statusAfter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SortHint? sortHint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanResult &&
    other.scanId == scanId &&
    other.outcome == outcome &&
    other.warningCode == warningCode &&
    other.message == message &&
    other.shipmentId == shipmentId &&
    other.statusAfter == statusAfter &&
    other.sortHint == sortHint;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scanId.hashCode) +
    (outcome.hashCode) +
    (warningCode == null ? 0 : warningCode!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (statusAfter == null ? 0 : statusAfter!.hashCode) +
    (sortHint == null ? 0 : sortHint!.hashCode);

  @override
  String toString() => 'ScanResult[scanId=$scanId, outcome=$outcome, warningCode=$warningCode, message=$message, shipmentId=$shipmentId, statusAfter=$statusAfter, sortHint=$sortHint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scanId'] = this.scanId;
      json[r'outcome'] = this.outcome;
    if (this.warningCode != null) {
      json[r'warningCode'] = this.warningCode;
    } else {
      json[r'warningCode'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.statusAfter != null) {
      json[r'statusAfter'] = this.statusAfter;
    } else {
      json[r'statusAfter'] = null;
    }
    if (this.sortHint != null) {
      json[r'sortHint'] = this.sortHint;
    } else {
      json[r'sortHint'] = null;
    }
    return json;
  }

  /// Returns a new [ScanResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanResult(
        scanId: mapValueOfType<String>(json, r'scanId')!,
        outcome: ScanOutcome.fromJson(json[r'outcome'])!,
        warningCode: ScanWarningCode.fromJson(json[r'warningCode']),
        message: mapValueOfType<String>(json, r'message'),
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        statusAfter: ShipmentStatus.fromJson(json[r'statusAfter']),
        sortHint: SortHint.fromJson(json[r'sortHint']),
      );
    }
    return null;
  }

  static List<ScanResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanResult> mapFromJson(dynamic json) {
    final map = <String, ScanResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanResult-objects as value to a dart map
  static Map<String, List<ScanResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scanId',
    'outcome',
  };
}

