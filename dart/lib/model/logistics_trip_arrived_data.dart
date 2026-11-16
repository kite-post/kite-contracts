//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LogisticsTripArrivedData {
  /// Returns a new [LogisticsTripArrivedData] instance.
  LogisticsTripArrivedData({
    required this.tripId,
    required this.tripCode,
    required this.toLocationId,
    this.delayMinutes,
    this.unitCodes = const [],
  });

  String tripId;

  String tripCode;

  String toLocationId;

  /// Відхилення від плану; живить прогноз ai-service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delayMinutes;

  List<String> unitCodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogisticsTripArrivedData &&
    other.tripId == tripId &&
    other.tripCode == tripCode &&
    other.toLocationId == toLocationId &&
    other.delayMinutes == delayMinutes &&
    _deepEquality.equals(other.unitCodes, unitCodes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tripId.hashCode) +
    (tripCode.hashCode) +
    (toLocationId.hashCode) +
    (delayMinutes == null ? 0 : delayMinutes!.hashCode) +
    (unitCodes.hashCode);

  @override
  String toString() => 'LogisticsTripArrivedData[tripId=$tripId, tripCode=$tripCode, toLocationId=$toLocationId, delayMinutes=$delayMinutes, unitCodes=$unitCodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tripId'] = this.tripId;
      json[r'tripCode'] = this.tripCode;
      json[r'toLocationId'] = this.toLocationId;
    if (this.delayMinutes != null) {
      json[r'delayMinutes'] = this.delayMinutes;
    } else {
      json[r'delayMinutes'] = null;
    }
      json[r'unitCodes'] = this.unitCodes;
    return json;
  }

  /// Returns a new [LogisticsTripArrivedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogisticsTripArrivedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogisticsTripArrivedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogisticsTripArrivedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogisticsTripArrivedData(
        tripId: mapValueOfType<String>(json, r'tripId')!,
        tripCode: mapValueOfType<String>(json, r'tripCode')!,
        toLocationId: mapValueOfType<String>(json, r'toLocationId')!,
        delayMinutes: mapValueOfType<int>(json, r'delayMinutes'),
        unitCodes: json[r'unitCodes'] is Iterable
            ? (json[r'unitCodes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<LogisticsTripArrivedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogisticsTripArrivedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogisticsTripArrivedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogisticsTripArrivedData> mapFromJson(dynamic json) {
    final map = <String, LogisticsTripArrivedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogisticsTripArrivedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogisticsTripArrivedData-objects as value to a dart map
  static Map<String, List<LogisticsTripArrivedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogisticsTripArrivedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogisticsTripArrivedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tripId',
    'tripCode',
    'toLocationId',
    'unitCodes',
  };
}

