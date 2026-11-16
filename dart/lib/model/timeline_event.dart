//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class TimelineEvent {
  /// Returns a new [TimelineEvent] instance.
  TimelineEvent({
    required this.eventId,
    required this.code,
    this.title,
    this.statusAfter,
    this.location,
    required this.occurredAt,
    this.emsevt,
  });

  String eventId;

  /// Код події з каталогу 8.2
  String code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

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
  LocationRef? location;

  DateTime occurredAt;

  /// Код UPU EMSEVT, якщо подія є в базовому наборі (8.2)
  String? emsevt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimelineEvent &&
    other.eventId == eventId &&
    other.code == code &&
    other.title == title &&
    other.statusAfter == statusAfter &&
    other.location == location &&
    other.occurredAt == occurredAt &&
    other.emsevt == emsevt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId.hashCode) +
    (code.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (statusAfter == null ? 0 : statusAfter!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (occurredAt.hashCode) +
    (emsevt == null ? 0 : emsevt!.hashCode);

  @override
  String toString() => 'TimelineEvent[eventId=$eventId, code=$code, title=$title, statusAfter=$statusAfter, location=$location, occurredAt=$occurredAt, emsevt=$emsevt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventId'] = this.eventId;
      json[r'code'] = this.code;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.statusAfter != null) {
      json[r'statusAfter'] = this.statusAfter;
    } else {
      json[r'statusAfter'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
      json[r'occurredAt'] = this.occurredAt.toUtc().toIso8601String();
    if (this.emsevt != null) {
      json[r'emsevt'] = this.emsevt;
    } else {
      json[r'emsevt'] = null;
    }
    return json;
  }

  /// Returns a new [TimelineEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimelineEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimelineEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimelineEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimelineEvent(
        eventId: mapValueOfType<String>(json, r'eventId')!,
        code: mapValueOfType<String>(json, r'code')!,
        title: mapValueOfType<String>(json, r'title'),
        statusAfter: ShipmentStatus.fromJson(json[r'statusAfter']),
        location: LocationRef.fromJson(json[r'location']),
        occurredAt: mapDateTime(json, r'occurredAt', r'')!,
        emsevt: mapValueOfType<String>(json, r'emsevt'),
      );
    }
    return null;
  }

  static List<TimelineEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimelineEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimelineEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimelineEvent> mapFromJson(dynamic json) {
    final map = <String, TimelineEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimelineEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimelineEvent-objects as value to a dart map
  static Map<String, List<TimelineEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimelineEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimelineEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventId',
    'code',
    'occurredAt',
  };
}

