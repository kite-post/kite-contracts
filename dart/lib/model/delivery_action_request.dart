//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class DeliveryActionRequest {
  /// Returns a new [DeliveryActionRequest] instance.
  DeliveryActionRequest({
    this.destinationLocationId,
    this.holdUntil,
    this.recipient,
    this.trustedPersonId,
    this.reason,
  });

  /// Для redirect
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationLocationId;

  /// Для hold і extend-storage (до 14 днів, 7.2 T11)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? holdUntil;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Party? recipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trustedPersonId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliveryActionRequest &&
    other.destinationLocationId == destinationLocationId &&
    other.holdUntil == holdUntil &&
    other.recipient == recipient &&
    other.trustedPersonId == trustedPersonId &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (destinationLocationId == null ? 0 : destinationLocationId!.hashCode) +
    (holdUntil == null ? 0 : holdUntil!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (trustedPersonId == null ? 0 : trustedPersonId!.hashCode) +
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'DeliveryActionRequest[destinationLocationId=$destinationLocationId, holdUntil=$holdUntil, recipient=$recipient, trustedPersonId=$trustedPersonId, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.destinationLocationId != null) {
      json[r'destinationLocationId'] = this.destinationLocationId;
    } else {
      json[r'destinationLocationId'] = null;
    }
    if (this.holdUntil != null) {
      json[r'holdUntil'] = _dateFormatter.format(this.holdUntil!.toUtc());
    } else {
      json[r'holdUntil'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.trustedPersonId != null) {
      json[r'trustedPersonId'] = this.trustedPersonId;
    } else {
      json[r'trustedPersonId'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [DeliveryActionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliveryActionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliveryActionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliveryActionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliveryActionRequest(
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId'),
        holdUntil: mapDateTime(json, r'holdUntil', r''),
        recipient: Party.fromJson(json[r'recipient']),
        trustedPersonId: mapValueOfType<String>(json, r'trustedPersonId'),
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<DeliveryActionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryActionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryActionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliveryActionRequest> mapFromJson(dynamic json) {
    final map = <String, DeliveryActionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryActionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliveryActionRequest-objects as value to a dart map
  static Map<String, List<DeliveryActionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliveryActionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliveryActionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

