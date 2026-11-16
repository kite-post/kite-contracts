//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CareTicketUpdatedData {
  /// Returns a new [CareTicketUpdatedData] instance.
  CareTicketUpdatedData({
    required this.ticketId,
    required this.status,
    this.shipmentId,
    this.lastMessageAuthor,
    this.assigneeUserId,
  });

  String ticketId;

  TicketStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  CareTicketUpdatedDataLastMessageAuthorEnum? lastMessageAuthor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assigneeUserId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CareTicketUpdatedData &&
    other.ticketId == ticketId &&
    other.status == status &&
    other.shipmentId == shipmentId &&
    other.lastMessageAuthor == lastMessageAuthor &&
    other.assigneeUserId == assigneeUserId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ticketId.hashCode) +
    (status.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (lastMessageAuthor == null ? 0 : lastMessageAuthor!.hashCode) +
    (assigneeUserId == null ? 0 : assigneeUserId!.hashCode);

  @override
  String toString() => 'CareTicketUpdatedData[ticketId=$ticketId, status=$status, shipmentId=$shipmentId, lastMessageAuthor=$lastMessageAuthor, assigneeUserId=$assigneeUserId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ticketId'] = this.ticketId;
      json[r'status'] = this.status;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.lastMessageAuthor != null) {
      json[r'lastMessageAuthor'] = this.lastMessageAuthor;
    } else {
      json[r'lastMessageAuthor'] = null;
    }
    if (this.assigneeUserId != null) {
      json[r'assigneeUserId'] = this.assigneeUserId;
    } else {
      json[r'assigneeUserId'] = null;
    }
    return json;
  }

  /// Returns a new [CareTicketUpdatedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CareTicketUpdatedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CareTicketUpdatedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CareTicketUpdatedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CareTicketUpdatedData(
        ticketId: mapValueOfType<String>(json, r'ticketId')!,
        status: TicketStatus.fromJson(json[r'status'])!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        lastMessageAuthor: CareTicketUpdatedDataLastMessageAuthorEnum.fromJson(json[r'lastMessageAuthor']),
        assigneeUserId: mapValueOfType<String>(json, r'assigneeUserId'),
      );
    }
    return null;
  }

  static List<CareTicketUpdatedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CareTicketUpdatedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareTicketUpdatedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CareTicketUpdatedData> mapFromJson(dynamic json) {
    final map = <String, CareTicketUpdatedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CareTicketUpdatedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CareTicketUpdatedData-objects as value to a dart map
  static Map<String, List<CareTicketUpdatedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CareTicketUpdatedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CareTicketUpdatedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ticketId',
    'status',
  };
}


class CareTicketUpdatedDataLastMessageAuthorEnum {
  /// Instantiate a new enum with the provided [value].
  const CareTicketUpdatedDataLastMessageAuthorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CUSTOMER = CareTicketUpdatedDataLastMessageAuthorEnum._(r'CUSTOMER');
  static const AGENT = CareTicketUpdatedDataLastMessageAuthorEnum._(r'AGENT');
  static const SYSTEM = CareTicketUpdatedDataLastMessageAuthorEnum._(r'SYSTEM');

  /// List of all possible values in this [enum][CareTicketUpdatedDataLastMessageAuthorEnum].
  static const values = <CareTicketUpdatedDataLastMessageAuthorEnum>[
    CUSTOMER,
    AGENT,
    SYSTEM,
  ];

  static CareTicketUpdatedDataLastMessageAuthorEnum? fromJson(dynamic value) => CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer().decode(value);

  static List<CareTicketUpdatedDataLastMessageAuthorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CareTicketUpdatedDataLastMessageAuthorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CareTicketUpdatedDataLastMessageAuthorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CareTicketUpdatedDataLastMessageAuthorEnum] to String,
/// and [decode] dynamic data back to [CareTicketUpdatedDataLastMessageAuthorEnum].
class CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer {
  factory CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer() => _instance ??= const CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer._();

  const CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer._();

  String encode(CareTicketUpdatedDataLastMessageAuthorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CareTicketUpdatedDataLastMessageAuthorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CareTicketUpdatedDataLastMessageAuthorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CUSTOMER': return CareTicketUpdatedDataLastMessageAuthorEnum.CUSTOMER;
        case r'AGENT': return CareTicketUpdatedDataLastMessageAuthorEnum.AGENT;
        case r'SYSTEM': return CareTicketUpdatedDataLastMessageAuthorEnum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer] instance.
  static CareTicketUpdatedDataLastMessageAuthorEnumTypeTransformer? _instance;
}


