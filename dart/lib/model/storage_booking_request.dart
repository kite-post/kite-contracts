//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class StorageBookingRequest {
  /// Returns a new [StorageBookingRequest] instance.
  StorageBookingRequest({
    required this.locationId,
    required this.size,
    required this.days,
  });

  String locationId;

  CellSize size;

  /// Minimum value: 1
  /// Maximum value: 14
  int days;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageBookingRequest &&
    other.locationId == locationId &&
    other.size == size &&
    other.days == days;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (locationId.hashCode) +
    (size.hashCode) +
    (days.hashCode);

  @override
  String toString() => 'StorageBookingRequest[locationId=$locationId, size=$size, days=$days]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'locationId'] = this.locationId;
      json[r'size'] = this.size;
      json[r'days'] = this.days;
    return json;
  }

  /// Returns a new [StorageBookingRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageBookingRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageBookingRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageBookingRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageBookingRequest(
        locationId: mapValueOfType<String>(json, r'locationId')!,
        size: CellSize.fromJson(json[r'size'])!,
        days: mapValueOfType<int>(json, r'days')!,
      );
    }
    return null;
  }

  static List<StorageBookingRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageBookingRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageBookingRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageBookingRequest> mapFromJson(dynamic json) {
    final map = <String, StorageBookingRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageBookingRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageBookingRequest-objects as value to a dart map
  static Map<String, List<StorageBookingRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageBookingRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageBookingRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'locationId',
    'size',
    'days',
  };
}

