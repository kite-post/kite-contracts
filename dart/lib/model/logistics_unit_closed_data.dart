//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LogisticsUnitClosedData {
  /// Returns a new [LogisticsUnitClosedData] instance.
  LogisticsUnitClosedData({
    required this.unitCode,
    required this.unitType,
    required this.locationId,
    this.sortLine,
    required this.destinationLocationId,
    this.parentUnitCode,
    this.shipmentIds = const [],
    this.closedByUserId,
  });

  String unitCode;

  LogisticsUnitClosedDataUnitTypeEnum unitType;

  String locationId;

  /// Лінія сортування, з якої пішов мішок
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortLine;

  String destinationLocationId;

  /// Якщо мішок вкладено в контейнер
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentUnitCode;

  List<String> shipmentIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? closedByUserId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogisticsUnitClosedData &&
    other.unitCode == unitCode &&
    other.unitType == unitType &&
    other.locationId == locationId &&
    other.sortLine == sortLine &&
    other.destinationLocationId == destinationLocationId &&
    other.parentUnitCode == parentUnitCode &&
    _deepEquality.equals(other.shipmentIds, shipmentIds) &&
    other.closedByUserId == closedByUserId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (unitCode.hashCode) +
    (unitType.hashCode) +
    (locationId.hashCode) +
    (sortLine == null ? 0 : sortLine!.hashCode) +
    (destinationLocationId.hashCode) +
    (parentUnitCode == null ? 0 : parentUnitCode!.hashCode) +
    (shipmentIds.hashCode) +
    (closedByUserId == null ? 0 : closedByUserId!.hashCode);

  @override
  String toString() => 'LogisticsUnitClosedData[unitCode=$unitCode, unitType=$unitType, locationId=$locationId, sortLine=$sortLine, destinationLocationId=$destinationLocationId, parentUnitCode=$parentUnitCode, shipmentIds=$shipmentIds, closedByUserId=$closedByUserId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'unitCode'] = this.unitCode;
      json[r'unitType'] = this.unitType;
      json[r'locationId'] = this.locationId;
    if (this.sortLine != null) {
      json[r'sortLine'] = this.sortLine;
    } else {
      json[r'sortLine'] = null;
    }
      json[r'destinationLocationId'] = this.destinationLocationId;
    if (this.parentUnitCode != null) {
      json[r'parentUnitCode'] = this.parentUnitCode;
    } else {
      json[r'parentUnitCode'] = null;
    }
      json[r'shipmentIds'] = this.shipmentIds;
    if (this.closedByUserId != null) {
      json[r'closedByUserId'] = this.closedByUserId;
    } else {
      json[r'closedByUserId'] = null;
    }
    return json;
  }

  /// Returns a new [LogisticsUnitClosedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogisticsUnitClosedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogisticsUnitClosedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogisticsUnitClosedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogisticsUnitClosedData(
        unitCode: mapValueOfType<String>(json, r'unitCode')!,
        unitType: LogisticsUnitClosedDataUnitTypeEnum.fromJson(json[r'unitType'])!,
        locationId: mapValueOfType<String>(json, r'locationId')!,
        sortLine: mapValueOfType<String>(json, r'sortLine'),
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId')!,
        parentUnitCode: mapValueOfType<String>(json, r'parentUnitCode'),
        shipmentIds: json[r'shipmentIds'] is Iterable
            ? (json[r'shipmentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        closedByUserId: mapValueOfType<String>(json, r'closedByUserId'),
      );
    }
    return null;
  }

  static List<LogisticsUnitClosedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogisticsUnitClosedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogisticsUnitClosedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogisticsUnitClosedData> mapFromJson(dynamic json) {
    final map = <String, LogisticsUnitClosedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogisticsUnitClosedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogisticsUnitClosedData-objects as value to a dart map
  static Map<String, List<LogisticsUnitClosedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogisticsUnitClosedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogisticsUnitClosedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'unitCode',
    'unitType',
    'locationId',
    'destinationLocationId',
    'shipmentIds',
  };
}


class LogisticsUnitClosedDataUnitTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const LogisticsUnitClosedDataUnitTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BAG = LogisticsUnitClosedDataUnitTypeEnum._(r'BAG');
  static const CONTAINER = LogisticsUnitClosedDataUnitTypeEnum._(r'CONTAINER');
  static const PALLET = LogisticsUnitClosedDataUnitTypeEnum._(r'PALLET');

  /// List of all possible values in this [enum][LogisticsUnitClosedDataUnitTypeEnum].
  static const values = <LogisticsUnitClosedDataUnitTypeEnum>[
    BAG,
    CONTAINER,
    PALLET,
  ];

  static LogisticsUnitClosedDataUnitTypeEnum? fromJson(dynamic value) => LogisticsUnitClosedDataUnitTypeEnumTypeTransformer().decode(value);

  static List<LogisticsUnitClosedDataUnitTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogisticsUnitClosedDataUnitTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogisticsUnitClosedDataUnitTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LogisticsUnitClosedDataUnitTypeEnum] to String,
/// and [decode] dynamic data back to [LogisticsUnitClosedDataUnitTypeEnum].
class LogisticsUnitClosedDataUnitTypeEnumTypeTransformer {
  factory LogisticsUnitClosedDataUnitTypeEnumTypeTransformer() => _instance ??= const LogisticsUnitClosedDataUnitTypeEnumTypeTransformer._();

  const LogisticsUnitClosedDataUnitTypeEnumTypeTransformer._();

  String encode(LogisticsUnitClosedDataUnitTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LogisticsUnitClosedDataUnitTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LogisticsUnitClosedDataUnitTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BAG': return LogisticsUnitClosedDataUnitTypeEnum.BAG;
        case r'CONTAINER': return LogisticsUnitClosedDataUnitTypeEnum.CONTAINER;
        case r'PALLET': return LogisticsUnitClosedDataUnitTypeEnum.PALLET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LogisticsUnitClosedDataUnitTypeEnumTypeTransformer] instance.
  static LogisticsUnitClosedDataUnitTypeEnumTypeTransformer? _instance;
}


