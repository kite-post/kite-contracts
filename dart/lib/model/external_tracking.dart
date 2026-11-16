//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ExternalTracking {
  /// Returns a new [ExternalTracking] instance.
  ExternalTracking({
    required this.id,
    required this.carrier,
    required this.trackingNumber,
    this.label,
    this.manualStatus,
    this.updatedAt,
  });

  String id;

  String carrier;

  String trackingNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalTracking &&
    other.id == id &&
    other.carrier == carrier &&
    other.trackingNumber == trackingNumber &&
    other.label == label &&
    other.manualStatus == manualStatus &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (carrier.hashCode) +
    (trackingNumber.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (manualStatus == null ? 0 : manualStatus!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ExternalTracking[id=$id, carrier=$carrier, trackingNumber=$trackingNumber, label=$label, manualStatus=$manualStatus, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'carrier'] = this.carrier;
      json[r'trackingNumber'] = this.trackingNumber;
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.manualStatus != null) {
      json[r'manualStatus'] = this.manualStatus;
    } else {
      json[r'manualStatus'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [ExternalTracking] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalTracking? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalTracking[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalTracking[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalTracking(
        id: mapValueOfType<String>(json, r'id')!,
        carrier: mapValueOfType<String>(json, r'carrier')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        label: mapValueOfType<String>(json, r'label'),
        manualStatus: mapValueOfType<String>(json, r'manualStatus'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<ExternalTracking> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalTracking>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalTracking.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalTracking> mapFromJson(dynamic json) {
    final map = <String, ExternalTracking>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalTracking.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalTracking-objects as value to a dart map
  static Map<String, List<ExternalTracking>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalTracking>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalTracking.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'carrier',
    'trackingNumber',
  };
}

