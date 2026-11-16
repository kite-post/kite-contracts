//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Ticket {
  /// Returns a new [Ticket] instance.
  Ticket({
    required this.id,
    required this.subject,
    required this.status,
    this.shipmentId,
    this.messages = const [],
    required this.createdAt,
    this.updatedAt,
  });

  String id;

  String subject;

  TicketStatus status;

  String? shipmentId;

  List<TicketMessage> messages;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Ticket &&
    other.id == id &&
    other.subject == subject &&
    other.status == status &&
    other.shipmentId == shipmentId &&
    _deepEquality.equals(other.messages, messages) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (subject.hashCode) +
    (status.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (messages.hashCode) +
    (createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Ticket[id=$id, subject=$subject, status=$status, shipmentId=$shipmentId, messages=$messages, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'subject'] = this.subject;
      json[r'status'] = this.status;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
      json[r'messages'] = this.messages;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Ticket] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Ticket? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Ticket[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Ticket[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Ticket(
        id: mapValueOfType<String>(json, r'id')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        status: TicketStatus.fromJson(json[r'status'])!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        messages: TicketMessage.listFromJson(json[r'messages']),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<Ticket> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Ticket>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Ticket.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Ticket> mapFromJson(dynamic json) {
    final map = <String, Ticket>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Ticket.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Ticket-objects as value to a dart map
  static Map<String, List<Ticket>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Ticket>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Ticket.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'subject',
    'status',
    'createdAt',
  };
}

