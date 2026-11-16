//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ScanVoidedData {
  /// Returns a new [ScanVoidedData] instance.
  ScanVoidedData({
    required this.scanId,
    required this.voidedEventId,
    this.shipmentId,
    required this.voidedByUserId,
    this.voidedByRole,
    required this.reason,
  });

  /// Скан, який анулюємо
  String scanId;

  /// Подія журналу, яку скасовує це анулювання
  String voidedEventId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  String voidedByUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ActorRole? voidedByRole;

  String reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanVoidedData &&
    other.scanId == scanId &&
    other.voidedEventId == voidedEventId &&
    other.shipmentId == shipmentId &&
    other.voidedByUserId == voidedByUserId &&
    other.voidedByRole == voidedByRole &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scanId.hashCode) +
    (voidedEventId.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (voidedByUserId.hashCode) +
    (voidedByRole == null ? 0 : voidedByRole!.hashCode) +
    (reason.hashCode);

  @override
  String toString() => 'ScanVoidedData[scanId=$scanId, voidedEventId=$voidedEventId, shipmentId=$shipmentId, voidedByUserId=$voidedByUserId, voidedByRole=$voidedByRole, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scanId'] = this.scanId;
      json[r'voidedEventId'] = this.voidedEventId;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
      json[r'voidedByUserId'] = this.voidedByUserId;
    if (this.voidedByRole != null) {
      json[r'voidedByRole'] = this.voidedByRole;
    } else {
      json[r'voidedByRole'] = null;
    }
      json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [ScanVoidedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanVoidedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanVoidedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanVoidedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanVoidedData(
        scanId: mapValueOfType<String>(json, r'scanId')!,
        voidedEventId: mapValueOfType<String>(json, r'voidedEventId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        voidedByUserId: mapValueOfType<String>(json, r'voidedByUserId')!,
        voidedByRole: ActorRole.fromJson(json[r'voidedByRole']),
        reason: mapValueOfType<String>(json, r'reason')!,
      );
    }
    return null;
  }

  static List<ScanVoidedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanVoidedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanVoidedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanVoidedData> mapFromJson(dynamic json) {
    final map = <String, ScanVoidedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanVoidedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanVoidedData-objects as value to a dart map
  static Map<String, List<ScanVoidedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanVoidedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanVoidedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scanId',
    'voidedEventId',
    'voidedByUserId',
    'reason',
  };
}

