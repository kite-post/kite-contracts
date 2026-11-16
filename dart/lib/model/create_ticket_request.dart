//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CreateTicketRequest {
  /// Returns a new [CreateTicketRequest] instance.
  CreateTicketRequest({
    required this.subject,
    required this.message,
    this.shipmentId,
  });

  String subject;

  String message;

  String? shipmentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTicketRequest &&
    other.subject == subject &&
    other.message == message &&
    other.shipmentId == shipmentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject.hashCode) +
    (message.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode);

  @override
  String toString() => 'CreateTicketRequest[subject=$subject, message=$message, shipmentId=$shipmentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subject'] = this.subject;
      json[r'message'] = this.message;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateTicketRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTicketRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateTicketRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateTicketRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateTicketRequest(
        subject: mapValueOfType<String>(json, r'subject')!,
        message: mapValueOfType<String>(json, r'message')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
      );
    }
    return null;
  }

  static List<CreateTicketRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTicketRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTicketRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTicketRequest> mapFromJson(dynamic json) {
    final map = <String, CreateTicketRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTicketRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTicketRequest-objects as value to a dart map
  static Map<String, List<CreateTicketRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTicketRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTicketRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    'message',
  };
}

