//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LogisticsDiscrepancyOpenedData {
  /// Returns a new [LogisticsDiscrepancyOpenedData] instance.
  LogisticsDiscrepancyOpenedData({
    required this.discrepancyId,
    required this.kind,
    this.tripId,
    this.unitCode,
    this.shipmentId,
    this.parcelId,
    required this.locationId,
    this.openedByUserId,
    this.comment,
  });

  String discrepancyId;

  LogisticsDiscrepancyOpenedDataKindEnum kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tripId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unitCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parcelId;

  String locationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openedByUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogisticsDiscrepancyOpenedData &&
    other.discrepancyId == discrepancyId &&
    other.kind == kind &&
    other.tripId == tripId &&
    other.unitCode == unitCode &&
    other.shipmentId == shipmentId &&
    other.parcelId == parcelId &&
    other.locationId == locationId &&
    other.openedByUserId == openedByUserId &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (discrepancyId.hashCode) +
    (kind.hashCode) +
    (tripId == null ? 0 : tripId!.hashCode) +
    (unitCode == null ? 0 : unitCode!.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (parcelId == null ? 0 : parcelId!.hashCode) +
    (locationId.hashCode) +
    (openedByUserId == null ? 0 : openedByUserId!.hashCode) +
    (comment == null ? 0 : comment!.hashCode);

  @override
  String toString() => 'LogisticsDiscrepancyOpenedData[discrepancyId=$discrepancyId, kind=$kind, tripId=$tripId, unitCode=$unitCode, shipmentId=$shipmentId, parcelId=$parcelId, locationId=$locationId, openedByUserId=$openedByUserId, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'discrepancyId'] = this.discrepancyId;
      json[r'kind'] = this.kind;
    if (this.tripId != null) {
      json[r'tripId'] = this.tripId;
    } else {
      json[r'tripId'] = null;
    }
    if (this.unitCode != null) {
      json[r'unitCode'] = this.unitCode;
    } else {
      json[r'unitCode'] = null;
    }
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.parcelId != null) {
      json[r'parcelId'] = this.parcelId;
    } else {
      json[r'parcelId'] = null;
    }
      json[r'locationId'] = this.locationId;
    if (this.openedByUserId != null) {
      json[r'openedByUserId'] = this.openedByUserId;
    } else {
      json[r'openedByUserId'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    return json;
  }

  /// Returns a new [LogisticsDiscrepancyOpenedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogisticsDiscrepancyOpenedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogisticsDiscrepancyOpenedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogisticsDiscrepancyOpenedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogisticsDiscrepancyOpenedData(
        discrepancyId: mapValueOfType<String>(json, r'discrepancyId')!,
        kind: LogisticsDiscrepancyOpenedDataKindEnum.fromJson(json[r'kind'])!,
        tripId: mapValueOfType<String>(json, r'tripId'),
        unitCode: mapValueOfType<String>(json, r'unitCode'),
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        parcelId: mapValueOfType<String>(json, r'parcelId'),
        locationId: mapValueOfType<String>(json, r'locationId')!,
        openedByUserId: mapValueOfType<String>(json, r'openedByUserId'),
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<LogisticsDiscrepancyOpenedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogisticsDiscrepancyOpenedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogisticsDiscrepancyOpenedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogisticsDiscrepancyOpenedData> mapFromJson(dynamic json) {
    final map = <String, LogisticsDiscrepancyOpenedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogisticsDiscrepancyOpenedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogisticsDiscrepancyOpenedData-objects as value to a dart map
  static Map<String, List<LogisticsDiscrepancyOpenedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogisticsDiscrepancyOpenedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogisticsDiscrepancyOpenedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'discrepancyId',
    'kind',
    'locationId',
  };
}


class LogisticsDiscrepancyOpenedDataKindEnum {
  /// Instantiate a new enum with the provided [value].
  const LogisticsDiscrepancyOpenedDataKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SHORTAGE = LogisticsDiscrepancyOpenedDataKindEnum._(r'SHORTAGE');
  static const EXTRA = LogisticsDiscrepancyOpenedDataKindEnum._(r'EXTRA');
  static const DAMAGE = LogisticsDiscrepancyOpenedDataKindEnum._(r'DAMAGE');
  static const MISSORT = LogisticsDiscrepancyOpenedDataKindEnum._(r'MISSORT');

  /// List of all possible values in this [enum][LogisticsDiscrepancyOpenedDataKindEnum].
  static const values = <LogisticsDiscrepancyOpenedDataKindEnum>[
    SHORTAGE,
    EXTRA,
    DAMAGE,
    MISSORT,
  ];

  static LogisticsDiscrepancyOpenedDataKindEnum? fromJson(dynamic value) => LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer().decode(value);

  static List<LogisticsDiscrepancyOpenedDataKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogisticsDiscrepancyOpenedDataKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogisticsDiscrepancyOpenedDataKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LogisticsDiscrepancyOpenedDataKindEnum] to String,
/// and [decode] dynamic data back to [LogisticsDiscrepancyOpenedDataKindEnum].
class LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer {
  factory LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer() => _instance ??= const LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer._();

  const LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer._();

  String encode(LogisticsDiscrepancyOpenedDataKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LogisticsDiscrepancyOpenedDataKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LogisticsDiscrepancyOpenedDataKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SHORTAGE': return LogisticsDiscrepancyOpenedDataKindEnum.SHORTAGE;
        case r'EXTRA': return LogisticsDiscrepancyOpenedDataKindEnum.EXTRA;
        case r'DAMAGE': return LogisticsDiscrepancyOpenedDataKindEnum.DAMAGE;
        case r'MISSORT': return LogisticsDiscrepancyOpenedDataKindEnum.MISSORT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer] instance.
  static LogisticsDiscrepancyOpenedDataKindEnumTypeTransformer? _instance;
}


