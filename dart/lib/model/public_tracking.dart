//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PublicTracking {
  /// Returns a new [PublicTracking] instance.
  PublicTracking({
    required this.trackingNumber,
    required this.status,
    this.statusText,
    this.originCity,
    this.destinationCity,
    this.events = const [],
    this.eta,
  });

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ShipmentStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originCity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationCity;

  List<TimelineEvent> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EtaPrediction? eta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicTracking &&
    other.trackingNumber == trackingNumber &&
    other.status == status &&
    other.statusText == statusText &&
    other.originCity == originCity &&
    other.destinationCity == destinationCity &&
    _deepEquality.equals(other.events, events) &&
    other.eta == eta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trackingNumber.hashCode) +
    (status.hashCode) +
    (statusText == null ? 0 : statusText!.hashCode) +
    (originCity == null ? 0 : originCity!.hashCode) +
    (destinationCity == null ? 0 : destinationCity!.hashCode) +
    (events.hashCode) +
    (eta == null ? 0 : eta!.hashCode);

  @override
  String toString() => 'PublicTracking[trackingNumber=$trackingNumber, status=$status, statusText=$statusText, originCity=$originCity, destinationCity=$destinationCity, events=$events, eta=$eta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'trackingNumber'] = this.trackingNumber;
      json[r'status'] = this.status;
    if (this.statusText != null) {
      json[r'statusText'] = this.statusText;
    } else {
      json[r'statusText'] = null;
    }
    if (this.originCity != null) {
      json[r'originCity'] = this.originCity;
    } else {
      json[r'originCity'] = null;
    }
    if (this.destinationCity != null) {
      json[r'destinationCity'] = this.destinationCity;
    } else {
      json[r'destinationCity'] = null;
    }
      json[r'events'] = this.events;
    if (this.eta != null) {
      json[r'eta'] = this.eta;
    } else {
      json[r'eta'] = null;
    }
    return json;
  }

  /// Returns a new [PublicTracking] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicTracking? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicTracking[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicTracking[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicTracking(
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        status: ShipmentStatus.fromJson(json[r'status'])!,
        statusText: mapValueOfType<String>(json, r'statusText'),
        originCity: mapValueOfType<String>(json, r'originCity'),
        destinationCity: mapValueOfType<String>(json, r'destinationCity'),
        events: TimelineEvent.listFromJson(json[r'events']),
        eta: EtaPrediction.fromJson(json[r'eta']),
      );
    }
    return null;
  }

  static List<PublicTracking> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicTracking>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicTracking.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicTracking> mapFromJson(dynamic json) {
    final map = <String, PublicTracking>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicTracking.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicTracking-objects as value to a dart map
  static Map<String, List<PublicTracking>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicTracking>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicTracking.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'trackingNumber',
    'status',
    'events',
  };
}

