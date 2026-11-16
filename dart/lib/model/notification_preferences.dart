//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class NotificationPreferences {
  /// Returns a new [NotificationPreferences] instance.
  NotificationPreferences({
    this.items = const [],
  });

  List<NotificationPreferencesItemsInner> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationPreferences &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode);

  @override
  String toString() => 'NotificationPreferences[items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [NotificationPreferences] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationPreferences? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationPreferences[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationPreferences[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationPreferences(
        items: NotificationPreferencesItemsInner.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<NotificationPreferences> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationPreferences>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationPreferences.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationPreferences> mapFromJson(dynamic json) {
    final map = <String, NotificationPreferences>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationPreferences.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationPreferences-objects as value to a dart map
  static Map<String, List<NotificationPreferences>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationPreferences>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationPreferences.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
  };
}

