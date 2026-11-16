//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Claim {
  /// Returns a new [Claim] instance.
  Claim({
    required this.id,
    required this.shipmentId,
    required this.type,
    required this.status,
    this.description,
    this.claimedAmount,
    this.approvedAmount,
    this.attachments = const [],
    required this.createdAt,
  });

  String id;

  String shipmentId;

  ClaimType type;

  ClaimStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? claimedAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? approvedAmount;

  List<ClaimAttachmentsInner> attachments;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Claim &&
    other.id == id &&
    other.shipmentId == shipmentId &&
    other.type == type &&
    other.status == status &&
    other.description == description &&
    other.claimedAmount == claimedAmount &&
    other.approvedAmount == approvedAmount &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (shipmentId.hashCode) +
    (type.hashCode) +
    (status.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (claimedAmount == null ? 0 : claimedAmount!.hashCode) +
    (approvedAmount == null ? 0 : approvedAmount!.hashCode) +
    (attachments.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Claim[id=$id, shipmentId=$shipmentId, type=$type, status=$status, description=$description, claimedAmount=$claimedAmount, approvedAmount=$approvedAmount, attachments=$attachments, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'shipmentId'] = this.shipmentId;
      json[r'type'] = this.type;
      json[r'status'] = this.status;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.claimedAmount != null) {
      json[r'claimedAmount'] = this.claimedAmount;
    } else {
      json[r'claimedAmount'] = null;
    }
    if (this.approvedAmount != null) {
      json[r'approvedAmount'] = this.approvedAmount;
    } else {
      json[r'approvedAmount'] = null;
    }
      json[r'attachments'] = this.attachments;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Claim] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Claim? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Claim[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Claim[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Claim(
        id: mapValueOfType<String>(json, r'id')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        type: ClaimType.fromJson(json[r'type'])!,
        status: ClaimStatus.fromJson(json[r'status'])!,
        description: mapValueOfType<String>(json, r'description'),
        claimedAmount: Money.fromJson(json[r'claimedAmount']),
        approvedAmount: Money.fromJson(json[r'approvedAmount']),
        attachments: ClaimAttachmentsInner.listFromJson(json[r'attachments']),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
      );
    }
    return null;
  }

  static List<Claim> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Claim>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Claim.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Claim> mapFromJson(dynamic json) {
    final map = <String, Claim>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Claim.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Claim-objects as value to a dart map
  static Map<String, List<Claim>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Claim>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Claim.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'shipmentId',
    'type',
    'status',
    'createdAt',
  };
}

