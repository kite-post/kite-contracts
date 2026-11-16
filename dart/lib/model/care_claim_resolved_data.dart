//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CareClaimResolvedData {
  /// Returns a new [CareClaimResolvedData] instance.
  CareClaimResolvedData({
    required this.claimId,
    required this.shipmentId,
    required this.status,
    this.approvedAmount,
    this.resolvedByUserId,
    this.resolution,
  });

  String claimId;

  String shipmentId;

  ClaimStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? approvedAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolvedByUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolution;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareClaimResolvedData &&
    other.claimId == claimId &&
    other.shipmentId == shipmentId &&
    other.status == status &&
    other.approvedAmount == approvedAmount &&
    other.resolvedByUserId == resolvedByUserId &&
    other.resolution == resolution;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claimId.hashCode) +
    (shipmentId.hashCode) +
    (status.hashCode) +
    (approvedAmount == null ? 0 : approvedAmount!.hashCode) +
    (resolvedByUserId == null ? 0 : resolvedByUserId!.hashCode) +
    (resolution == null ? 0 : resolution!.hashCode);

  @override
  String toString() => 'CareClaimResolvedData[claimId=$claimId, shipmentId=$shipmentId, status=$status, approvedAmount=$approvedAmount, resolvedByUserId=$resolvedByUserId, resolution=$resolution]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'claimId'] = this.claimId;
      json[r'shipmentId'] = this.shipmentId;
      json[r'status'] = this.status;
    if (this.approvedAmount != null) {
      json[r'approvedAmount'] = this.approvedAmount;
    } else {
      json[r'approvedAmount'] = null;
    }
    if (this.resolvedByUserId != null) {
      json[r'resolvedByUserId'] = this.resolvedByUserId;
    } else {
      json[r'resolvedByUserId'] = null;
    }
    if (this.resolution != null) {
      json[r'resolution'] = this.resolution;
    } else {
      json[r'resolution'] = null;
    }
    return json;
  }

  /// Returns a new [CareClaimResolvedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CareClaimResolvedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CareClaimResolvedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CareClaimResolvedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CareClaimResolvedData(
        claimId: mapValueOfType<String>(json, r'claimId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        status: ClaimStatus.fromJson(json[r'status'])!,
        approvedAmount: Money.fromJson(json[r'approvedAmount']),
        resolvedByUserId: mapValueOfType<String>(json, r'resolvedByUserId'),
        resolution: mapValueOfType<String>(json, r'resolution'),
      );
    }
    return null;
  }

  static List<CareClaimResolvedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CareClaimResolvedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareClaimResolvedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CareClaimResolvedData> mapFromJson(dynamic json) {
    final map = <String, CareClaimResolvedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareClaimResolvedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CareClaimResolvedData-objects as value to a dart map
  static Map<String, List<CareClaimResolvedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CareClaimResolvedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CareClaimResolvedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'claimId',
    'shipmentId',
    'status',
  };
}

