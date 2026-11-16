//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CareClaimCreatedData {
  /// Returns a new [CareClaimCreatedData] instance.
  CareClaimCreatedData({
    required this.claimId,
    required this.shipmentId,
    required this.type,
    this.claimedAmount,
    this.createdByCustomerId,
    this.auto,
  });

  String claimId;

  String shipmentId;

  ClaimType type;

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
  String? createdByCustomerId;

  /// true — відкрита системою при підтвердженні втрати (7.2, T15)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? auto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareClaimCreatedData &&
    other.claimId == claimId &&
    other.shipmentId == shipmentId &&
    other.type == type &&
    other.claimedAmount == claimedAmount &&
    other.createdByCustomerId == createdByCustomerId &&
    other.auto == auto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claimId.hashCode) +
    (shipmentId.hashCode) +
    (type.hashCode) +
    (claimedAmount == null ? 0 : claimedAmount!.hashCode) +
    (createdByCustomerId == null ? 0 : createdByCustomerId!.hashCode) +
    (auto == null ? 0 : auto!.hashCode);

  @override
  String toString() => 'CareClaimCreatedData[claimId=$claimId, shipmentId=$shipmentId, type=$type, claimedAmount=$claimedAmount, createdByCustomerId=$createdByCustomerId, auto=$auto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'claimId'] = this.claimId;
      json[r'shipmentId'] = this.shipmentId;
      json[r'type'] = this.type;
    if (this.claimedAmount != null) {
      json[r'claimedAmount'] = this.claimedAmount;
    } else {
      json[r'claimedAmount'] = null;
    }
    if (this.createdByCustomerId != null) {
      json[r'createdByCustomerId'] = this.createdByCustomerId;
    } else {
      json[r'createdByCustomerId'] = null;
    }
    if (this.auto != null) {
      json[r'auto'] = this.auto;
    } else {
      json[r'auto'] = null;
    }
    return json;
  }

  /// Returns a new [CareClaimCreatedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CareClaimCreatedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CareClaimCreatedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CareClaimCreatedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CareClaimCreatedData(
        claimId: mapValueOfType<String>(json, r'claimId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        type: ClaimType.fromJson(json[r'type'])!,
        claimedAmount: Money.fromJson(json[r'claimedAmount']),
        createdByCustomerId: mapValueOfType<String>(json, r'createdByCustomerId'),
        auto: mapValueOfType<bool>(json, r'auto'),
      );
    }
    return null;
  }

  static List<CareClaimCreatedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CareClaimCreatedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareClaimCreatedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CareClaimCreatedData> mapFromJson(dynamic json) {
    final map = <String, CareClaimCreatedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareClaimCreatedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CareClaimCreatedData-objects as value to a dart map
  static Map<String, List<CareClaimCreatedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CareClaimCreatedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CareClaimCreatedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'claimId',
    'shipmentId',
    'type',
  };
}

