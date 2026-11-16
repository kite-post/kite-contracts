//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class AuditPiiAccessedData {
  /// Returns a new [AuditPiiAccessedData] instance.
  AuditPiiAccessedData({
    required this.actorUserId,
    required this.actorRole,
    required this.subjectType,
    required this.subjectId,
    this.fields = const [],
    required this.purpose,
    this.ip,
  });

  String actorUserId;

  ActorRole actorRole;

  AuditPiiAccessedDataSubjectTypeEnum subjectType;

  String subjectId;

  /// Які саме поля відкрив працівник
  List<String> fields;

  AuditPiiAccessedDataPurposeEnum purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditPiiAccessedData &&
    other.actorUserId == actorUserId &&
    other.actorRole == actorRole &&
    other.subjectType == subjectType &&
    other.subjectId == subjectId &&
    _deepEquality.equals(other.fields, fields) &&
    other.purpose == purpose &&
    other.ip == ip;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actorUserId.hashCode) +
    (actorRole.hashCode) +
    (subjectType.hashCode) +
    (subjectId.hashCode) +
    (fields.hashCode) +
    (purpose.hashCode) +
    (ip == null ? 0 : ip!.hashCode);

  @override
  String toString() => 'AuditPiiAccessedData[actorUserId=$actorUserId, actorRole=$actorRole, subjectType=$subjectType, subjectId=$subjectId, fields=$fields, purpose=$purpose, ip=$ip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actorUserId'] = this.actorUserId;
      json[r'actorRole'] = this.actorRole;
      json[r'subjectType'] = this.subjectType;
      json[r'subjectId'] = this.subjectId;
      json[r'fields'] = this.fields;
      json[r'purpose'] = this.purpose;
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    return json;
  }

  /// Returns a new [AuditPiiAccessedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditPiiAccessedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditPiiAccessedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditPiiAccessedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditPiiAccessedData(
        actorUserId: mapValueOfType<String>(json, r'actorUserId')!,
        actorRole: ActorRole.fromJson(json[r'actorRole'])!,
        subjectType: AuditPiiAccessedDataSubjectTypeEnum.fromJson(json[r'subjectType'])!,
        subjectId: mapValueOfType<String>(json, r'subjectId')!,
        fields: json[r'fields'] is Iterable
            ? (json[r'fields'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        purpose: AuditPiiAccessedDataPurposeEnum.fromJson(json[r'purpose'])!,
        ip: mapValueOfType<String>(json, r'ip'),
      );
    }
    return null;
  }

  static List<AuditPiiAccessedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditPiiAccessedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditPiiAccessedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditPiiAccessedData> mapFromJson(dynamic json) {
    final map = <String, AuditPiiAccessedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditPiiAccessedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditPiiAccessedData-objects as value to a dart map
  static Map<String, List<AuditPiiAccessedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditPiiAccessedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditPiiAccessedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'actorUserId',
    'actorRole',
    'subjectType',
    'subjectId',
    'fields',
    'purpose',
  };
}


class AuditPiiAccessedDataSubjectTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditPiiAccessedDataSubjectTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CUSTOMER = AuditPiiAccessedDataSubjectTypeEnum._(r'CUSTOMER');
  static const SHIPMENT = AuditPiiAccessedDataSubjectTypeEnum._(r'SHIPMENT');
  static const ORGANIZATION = AuditPiiAccessedDataSubjectTypeEnum._(r'ORGANIZATION');

  /// List of all possible values in this [enum][AuditPiiAccessedDataSubjectTypeEnum].
  static const values = <AuditPiiAccessedDataSubjectTypeEnum>[
    CUSTOMER,
    SHIPMENT,
    ORGANIZATION,
  ];

  static AuditPiiAccessedDataSubjectTypeEnum? fromJson(dynamic value) => AuditPiiAccessedDataSubjectTypeEnumTypeTransformer().decode(value);

  static List<AuditPiiAccessedDataSubjectTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditPiiAccessedDataSubjectTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditPiiAccessedDataSubjectTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuditPiiAccessedDataSubjectTypeEnum] to String,
/// and [decode] dynamic data back to [AuditPiiAccessedDataSubjectTypeEnum].
class AuditPiiAccessedDataSubjectTypeEnumTypeTransformer {
  factory AuditPiiAccessedDataSubjectTypeEnumTypeTransformer() => _instance ??= const AuditPiiAccessedDataSubjectTypeEnumTypeTransformer._();

  const AuditPiiAccessedDataSubjectTypeEnumTypeTransformer._();

  String encode(AuditPiiAccessedDataSubjectTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditPiiAccessedDataSubjectTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditPiiAccessedDataSubjectTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CUSTOMER': return AuditPiiAccessedDataSubjectTypeEnum.CUSTOMER;
        case r'SHIPMENT': return AuditPiiAccessedDataSubjectTypeEnum.SHIPMENT;
        case r'ORGANIZATION': return AuditPiiAccessedDataSubjectTypeEnum.ORGANIZATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuditPiiAccessedDataSubjectTypeEnumTypeTransformer] instance.
  static AuditPiiAccessedDataSubjectTypeEnumTypeTransformer? _instance;
}



class AuditPiiAccessedDataPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditPiiAccessedDataPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPORT_REQUEST = AuditPiiAccessedDataPurposeEnum._(r'SUPPORT_REQUEST');
  static const HANDOVER = AuditPiiAccessedDataPurposeEnum._(r'HANDOVER');
  static const CLAIM_REVIEW = AuditPiiAccessedDataPurposeEnum._(r'CLAIM_REVIEW');
  static const DISPUTE = AuditPiiAccessedDataPurposeEnum._(r'DISPUTE');
  static const AUDIT = AuditPiiAccessedDataPurposeEnum._(r'AUDIT');

  /// List of all possible values in this [enum][AuditPiiAccessedDataPurposeEnum].
  static const values = <AuditPiiAccessedDataPurposeEnum>[
    SUPPORT_REQUEST,
    HANDOVER,
    CLAIM_REVIEW,
    DISPUTE,
    AUDIT,
  ];

  static AuditPiiAccessedDataPurposeEnum? fromJson(dynamic value) => AuditPiiAccessedDataPurposeEnumTypeTransformer().decode(value);

  static List<AuditPiiAccessedDataPurposeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditPiiAccessedDataPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditPiiAccessedDataPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuditPiiAccessedDataPurposeEnum] to String,
/// and [decode] dynamic data back to [AuditPiiAccessedDataPurposeEnum].
class AuditPiiAccessedDataPurposeEnumTypeTransformer {
  factory AuditPiiAccessedDataPurposeEnumTypeTransformer() => _instance ??= const AuditPiiAccessedDataPurposeEnumTypeTransformer._();

  const AuditPiiAccessedDataPurposeEnumTypeTransformer._();

  String encode(AuditPiiAccessedDataPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditPiiAccessedDataPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditPiiAccessedDataPurposeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPORT_REQUEST': return AuditPiiAccessedDataPurposeEnum.SUPPORT_REQUEST;
        case r'HANDOVER': return AuditPiiAccessedDataPurposeEnum.HANDOVER;
        case r'CLAIM_REVIEW': return AuditPiiAccessedDataPurposeEnum.CLAIM_REVIEW;
        case r'DISPUTE': return AuditPiiAccessedDataPurposeEnum.DISPUTE;
        case r'AUDIT': return AuditPiiAccessedDataPurposeEnum.AUDIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuditPiiAccessedDataPurposeEnumTypeTransformer] instance.
  static AuditPiiAccessedDataPurposeEnumTypeTransformer? _instance;
}


