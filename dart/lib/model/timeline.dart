//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Timeline {
  /// Returns a new [Timeline] instance.
  Timeline({
    required this.shipmentId,
    this.trackingNumber,
    required this.status,
    this.statusText,
    this.events = const [],
    this.eta,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingNumber;

  ShipmentStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusText;

  List<TimelineEvent> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EtaPrediction? eta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Timeline &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.status == status &&
    other.statusText == statusText &&
    _deepEquality.equals(other.events, events) &&
    other.eta == eta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber == null ? 0 : trackingNumber!.hashCode) +
    (status.hashCode) +
    (statusText == null ? 0 : statusText!.hashCode) +
    (events.hashCode) +
    (eta == null ? 0 : eta!.hashCode);

  @override
  String toString() => 'Timeline[shipmentId=$shipmentId, trackingNumber=$trackingNumber, status=$status, statusText=$statusText, events=$events, eta=$eta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
    if (this.trackingNumber != null) {
      json[r'trackingNumber'] = this.trackingNumber;
    } else {
      json[r'trackingNumber'] = null;
    }
      json[r'status'] = this.status;
    if (this.statusText != null) {
      json[r'statusText'] = this.statusText;
    } else {
      json[r'statusText'] = null;
    }
      json[r'events'] = this.events;
    if (this.eta != null) {
      json[r'eta'] = this.eta;
    } else {
      json[r'eta'] = null;
    }
    return json;
  }

  /// Returns a new [Timeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Timeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Timeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Timeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Timeline(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber'),
        status: ShipmentStatus.fromJson(json[r'status'])!,
        statusText: mapValueOfType<String>(json, r'statusText'),
        events: TimelineEvent.listFromJson(json[r'events']),
        eta: EtaPrediction.fromJson(json[r'eta']),
      );
    }
    return null;
  }

  static List<Timeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Timeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Timeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Timeline> mapFromJson(dynamic json) {
    final map = <String, Timeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Timeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Timeline-objects as value to a dart map
  static Map<String, List<Timeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Timeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Timeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'status',
    'events',
  };
}

