//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class AuditStaffActionData {
  /// Returns a new [AuditStaffActionData] instance.
  AuditStaffActionData({
    required this.actorUserId,
    required this.actorRole,
    required this.action,
    required this.entityType,
    required this.entityId,
    this.locationId,
    this.ip,
    this.userAgent,
    this.result,
  });

  String actorUserId;

  ActorRole actorRole;

  /// Машинна назва дії
  String action;

  String entityType;

  String entityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  AuditStaffActionDataResultEnum? result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditStaffActionData &&
    other.actorUserId == actorUserId &&
    other.actorRole == actorRole &&
    other.action == action &&
    other.entityType == entityType &&
    other.entityId == entityId &&
    other.locationId == locationId &&
    other.ip == ip &&
    other.userAgent == userAgent &&
    other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actorUserId.hashCode) +
    (actorRole.hashCode) +
    (action.hashCode) +
    (entityType.hashCode) +
    (entityId.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (userAgent == null ? 0 : userAgent!.hashCode) +
    (result == null ? 0 : result!.hashCode);

  @override
  String toString() => 'AuditStaffActionData[actorUserId=$actorUserId, actorRole=$actorRole, action=$action, entityType=$entityType, entityId=$entityId, locationId=$locationId, ip=$ip, userAgent=$userAgent, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actorUserId'] = this.actorUserId;
      json[r'actorRole'] = this.actorRole;
      json[r'action'] = this.action;
      json[r'entityType'] = this.entityType;
      json[r'entityId'] = this.entityId;
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.userAgent != null) {
      json[r'userAgent'] = this.userAgent;
    } else {
      json[r'userAgent'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    return json;
  }

  /// Returns a new [AuditStaffActionData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditStaffActionData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditStaffActionData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditStaffActionData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditStaffActionData(
        actorUserId: mapValueOfType<String>(json, r'actorUserId')!,
        actorRole: ActorRole.fromJson(json[r'actorRole'])!,
        action: mapValueOfType<String>(json, r'action')!,
        entityType: mapValueOfType<String>(json, r'entityType')!,
        entityId: mapValueOfType<String>(json, r'entityId')!,
        locationId: mapValueOfType<String>(json, r'locationId'),
        ip: mapValueOfType<String>(json, r'ip'),
        userAgent: mapValueOfType<String>(json, r'userAgent'),
        result: AuditStaffActionDataResultEnum.fromJson(json[r'result']),
      );
    }
    return null;
  }

  static List<AuditStaffActionData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditStaffActionData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditStaffActionData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditStaffActionData> mapFromJson(dynamic json) {
    final map = <String, AuditStaffActionData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditStaffActionData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditStaffActionData-objects as value to a dart map
  static Map<String, List<AuditStaffActionData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditStaffActionData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditStaffActionData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'actorUserId',
    'actorRole',
    'action',
    'entityType',
    'entityId',
  };
}


class AuditStaffActionDataResultEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditStaffActionDataResultEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OK = AuditStaffActionDataResultEnum._(r'OK');
  static const DENIED = AuditStaffActionDataResultEnum._(r'DENIED');
  static const ERROR = AuditStaffActionDataResultEnum._(r'ERROR');

  /// List of all possible values in this [enum][AuditStaffActionDataResultEnum].
  static const values = <AuditStaffActionDataResultEnum>[
    OK,
    DENIED,
    ERROR,
  ];

  static AuditStaffActionDataResultEnum? fromJson(dynamic value) => AuditStaffActionDataResultEnumTypeTransformer().decode(value);

  static List<AuditStaffActionDataResultEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditStaffActionDataResultEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditStaffActionDataResultEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuditStaffActionDataResultEnum] to String,
/// and [decode] dynamic data back to [AuditStaffActionDataResultEnum].
class AuditStaffActionDataResultEnumTypeTransformer {
  factory AuditStaffActionDataResultEnumTypeTransformer() => _instance ??= const AuditStaffActionDataResultEnumTypeTransformer._();

  const AuditStaffActionDataResultEnumTypeTransformer._();

  String encode(AuditStaffActionDataResultEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditStaffActionDataResultEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditStaffActionDataResultEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OK': return AuditStaffActionDataResultEnum.OK;
        case r'DENIED': return AuditStaffActionDataResultEnum.DENIED;
        case r'ERROR': return AuditStaffActionDataResultEnum.ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuditStaffActionDataResultEnumTypeTransformer] instance.
  static AuditStaffActionDataResultEnumTypeTransformer? _instance;
}


