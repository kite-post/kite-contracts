//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ScanBatch {
  /// Returns a new [ScanBatch] instance.
  ScanBatch({
    required this.deviceId,
    this.sessionId,
    this.items = const [],
  });

  String deviceId;

  /// Сесія пейрингу з Kite Ops
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  List<ScanItem> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanBatch &&
    other.deviceId == deviceId &&
    other.sessionId == sessionId &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceId.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'ScanBatch[deviceId=$deviceId, sessionId=$sessionId, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deviceId'] = this.deviceId;
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [ScanBatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanBatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanBatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanBatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanBatch(
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        items: ScanItem.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<ScanBatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanBatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanBatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanBatch> mapFromJson(dynamic json) {
    final map = <String, ScanBatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanBatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanBatch-objects as value to a dart map
  static Map<String, List<ScanBatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanBatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanBatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deviceId',
    'items',
  };
}

