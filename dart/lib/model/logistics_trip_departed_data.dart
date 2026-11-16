//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LogisticsTripDepartedData {
  /// Returns a new [LogisticsTripDepartedData] instance.
  LogisticsTripDepartedData({
    required this.tripId,
    required this.tripCode,
    required this.fromLocationId,
    required this.toLocationId,
    this.vehicleId,
    this.driverUserId,
    this.plannedArrivalAt,
    this.unitCodes = const [],
  });

  String tripId;

  /// Код рейсу TR-{дата}-{номер} (10.1)
  String tripCode;

  String fromLocationId;

  String toLocationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vehicleId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driverUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? plannedArrivalAt;

  List<String> unitCodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogisticsTripDepartedData &&
    other.tripId == tripId &&
    other.tripCode == tripCode &&
    other.fromLocationId == fromLocationId &&
    other.toLocationId == toLocationId &&
    other.vehicleId == vehicleId &&
    other.driverUserId == driverUserId &&
    other.plannedArrivalAt == plannedArrivalAt &&
    _deepEquality.equals(other.unitCodes, unitCodes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tripId.hashCode) +
    (tripCode.hashCode) +
    (fromLocationId.hashCode) +
    (toLocationId.hashCode) +
    (vehicleId == null ? 0 : vehicleId!.hashCode) +
    (driverUserId == null ? 0 : driverUserId!.hashCode) +
    (plannedArrivalAt == null ? 0 : plannedArrivalAt!.hashCode) +
    (unitCodes.hashCode);

  @override
  String toString() => 'LogisticsTripDepartedData[tripId=$tripId, tripCode=$tripCode, fromLocationId=$fromLocationId, toLocationId=$toLocationId, vehicleId=$vehicleId, driverUserId=$driverUserId, plannedArrivalAt=$plannedArrivalAt, unitCodes=$unitCodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tripId'] = this.tripId;
      json[r'tripCode'] = this.tripCode;
      json[r'fromLocationId'] = this.fromLocationId;
      json[r'toLocationId'] = this.toLocationId;
    if (this.vehicleId != null) {
      json[r'vehicleId'] = this.vehicleId;
    } else {
      json[r'vehicleId'] = null;
    }
    if (this.driverUserId != null) {
      json[r'driverUserId'] = this.driverUserId;
    } else {
      json[r'driverUserId'] = null;
    }
    if (this.plannedArrivalAt != null) {
      json[r'plannedArrivalAt'] = this.plannedArrivalAt!.toUtc().toIso8601String();
    } else {
      json[r'plannedArrivalAt'] = null;
    }
      json[r'unitCodes'] = this.unitCodes;
    return json;
  }

  /// Returns a new [LogisticsTripDepartedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogisticsTripDepartedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogisticsTripDepartedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogisticsTripDepartedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogisticsTripDepartedData(
        tripId: mapValueOfType<String>(json, r'tripId')!,
        tripCode: mapValueOfType<String>(json, r'tripCode')!,
        fromLocationId: mapValueOfType<String>(json, r'fromLocationId')!,
        toLocationId: mapValueOfType<String>(json, r'toLocationId')!,
        vehicleId: mapValueOfType<String>(json, r'vehicleId'),
        driverUserId: mapValueOfType<String>(json, r'driverUserId'),
        plannedArrivalAt: mapDateTime(json, r'plannedArrivalAt', r''),
        unitCodes: json[r'unitCodes'] is Iterable
            ? (json[r'unitCodes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<LogisticsTripDepartedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogisticsTripDepartedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogisticsTripDepartedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogisticsTripDepartedData> mapFromJson(dynamic json) {
    final map = <String, LogisticsTripDepartedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogisticsTripDepartedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogisticsTripDepartedData-objects as value to a dart map
  static Map<String, List<LogisticsTripDepartedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogisticsTripDepartedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogisticsTripDepartedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tripId',
    'tripCode',
    'fromLocationId',
    'toLocationId',
    'unitCodes',
  };
}

