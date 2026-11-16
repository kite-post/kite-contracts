//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class NotificationPreferencesItemsInner {
  /// Returns a new [NotificationPreferencesItemsInner] instance.
  NotificationPreferencesItemsInner({
    required this.eventType,
    this.channels = const [],
  });

  NotificationEventType eventType;

  List<NotificationChannel> channels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationPreferencesItemsInner &&
    other.eventType == eventType &&
    _deepEquality.equals(other.channels, channels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventType.hashCode) +
    (channels.hashCode);

  @override
  String toString() => 'NotificationPreferencesItemsInner[eventType=$eventType, channels=$channels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventType'] = this.eventType;
      json[r'channels'] = this.channels;
    return json;
  }

  /// Returns a new [NotificationPreferencesItemsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationPreferencesItemsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationPreferencesItemsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationPreferencesItemsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationPreferencesItemsInner(
        eventType: NotificationEventType.fromJson(json[r'eventType'])!,
        channels: NotificationChannel.listFromJson(json[r'channels']),
      );
    }
    return null;
  }

  static List<NotificationPreferencesItemsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationPreferencesItemsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationPreferencesItemsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationPreferencesItemsInner> mapFromJson(dynamic json) {
    final map = <String, NotificationPreferencesItemsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationPreferencesItemsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationPreferencesItemsInner-objects as value to a dart map
  static Map<String, List<NotificationPreferencesItemsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationPreferencesItemsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationPreferencesItemsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventType',
    'channels',
  };
}

