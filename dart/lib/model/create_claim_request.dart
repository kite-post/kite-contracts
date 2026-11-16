//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CreateClaimRequest {
  /// Returns a new [CreateClaimRequest] instance.
  CreateClaimRequest({
    required this.shipmentId,
    required this.type,
    required this.description,
    this.claimedAmount,
  });

  String shipmentId;

  ClaimType type;

  String description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? claimedAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateClaimRequest &&
    other.shipmentId == shipmentId &&
    other.type == type &&
    other.description == description &&
    other.claimedAmount == claimedAmount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (type.hashCode) +
    (description.hashCode) +
    (claimedAmount == null ? 0 : claimedAmount!.hashCode);

  @override
  String toString() => 'CreateClaimRequest[shipmentId=$shipmentId, type=$type, description=$description, claimedAmount=$claimedAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'type'] = this.type;
      json[r'description'] = this.description;
    if (this.claimedAmount != null) {
      json[r'claimedAmount'] = this.claimedAmount;
    } else {
      json[r'claimedAmount'] = null;
    }
    return json;
  }

  /// Returns a new [CreateClaimRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateClaimRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateClaimRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateClaimRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateClaimRequest(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        type: ClaimType.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description')!,
        claimedAmount: Money.fromJson(json[r'claimedAmount']),
      );
    }
    return null;
  }

  static List<CreateClaimRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateClaimRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateClaimRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateClaimRequest> mapFromJson(dynamic json) {
    final map = <String, CreateClaimRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateClaimRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateClaimRequest-objects as value to a dart map
  static Map<String, List<CreateClaimRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateClaimRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateClaimRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'type',
    'description',
  };
}

