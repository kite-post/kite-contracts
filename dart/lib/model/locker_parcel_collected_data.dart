//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class LockerParcelCollectedData {
  /// Returns a new [LockerParcelCollectedData] instance.
  LockerParcelCollectedData({
    required this.lockerId,
    this.locationId,
    required this.cellCode,
    required this.shipmentId,
    this.parcelId,
    required this.collectedBy,
  });

  String lockerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationId;

  String cellCode;

  String shipmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parcelId;

  LockerParcelCollectedDataCollectedByEnum collectedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LockerParcelCollectedData &&
    other.lockerId == lockerId &&
    other.locationId == locationId &&
    other.cellCode == cellCode &&
    other.shipmentId == shipmentId &&
    other.parcelId == parcelId &&
    other.collectedBy == collectedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lockerId.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (cellCode.hashCode) +
    (shipmentId.hashCode) +
    (parcelId == null ? 0 : parcelId!.hashCode) +
    (collectedBy.hashCode);

  @override
  String toString() => 'LockerParcelCollectedData[lockerId=$lockerId, locationId=$locationId, cellCode=$cellCode, shipmentId=$shipmentId, parcelId=$parcelId, collectedBy=$collectedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lockerId'] = this.lockerId;
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
      json[r'cellCode'] = this.cellCode;
      json[r'shipmentId'] = this.shipmentId;
    if (this.parcelId != null) {
      json[r'parcelId'] = this.parcelId;
    } else {
      json[r'parcelId'] = null;
    }
      json[r'collectedBy'] = this.collectedBy;
    return json;
  }

  /// Returns a new [LockerParcelCollectedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LockerParcelCollectedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LockerParcelCollectedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LockerParcelCollectedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LockerParcelCollectedData(
        lockerId: mapValueOfType<String>(json, r'lockerId')!,
        locationId: mapValueOfType<String>(json, r'locationId'),
        cellCode: mapValueOfType<String>(json, r'cellCode')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        parcelId: mapValueOfType<String>(json, r'parcelId'),
        collectedBy: LockerParcelCollectedDataCollectedByEnum.fromJson(json[r'collectedBy'])!,
      );
    }
    return null;
  }

  static List<LockerParcelCollectedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerParcelCollectedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerParcelCollectedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LockerParcelCollectedData> mapFromJson(dynamic json) {
    final map = <String, LockerParcelCollectedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LockerParcelCollectedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LockerParcelCollectedData-objects as value to a dart map
  static Map<String, List<LockerParcelCollectedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LockerParcelCollectedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LockerParcelCollectedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lockerId',
    'cellCode',
    'shipmentId',
    'collectedBy',
  };
}


class LockerParcelCollectedDataCollectedByEnum {
  /// Instantiate a new enum with the provided [value].
  const LockerParcelCollectedDataCollectedByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENT = LockerParcelCollectedDataCollectedByEnum._(r'RECIPIENT');
  static const TRUSTED_PERSON = LockerParcelCollectedDataCollectedByEnum._(r'TRUSTED_PERSON');
  static const COURIER = LockerParcelCollectedDataCollectedByEnum._(r'COURIER');

  /// List of all possible values in this [enum][LockerParcelCollectedDataCollectedByEnum].
  static const values = <LockerParcelCollectedDataCollectedByEnum>[
    RECIPIENT,
    TRUSTED_PERSON,
    COURIER,
  ];

  static LockerParcelCollectedDataCollectedByEnum? fromJson(dynamic value) => LockerParcelCollectedDataCollectedByEnumTypeTransformer().decode(value);

  static List<LockerParcelCollectedDataCollectedByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LockerParcelCollectedDataCollectedByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LockerParcelCollectedDataCollectedByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LockerParcelCollectedDataCollectedByEnum] to String,
/// and [decode] dynamic data back to [LockerParcelCollectedDataCollectedByEnum].
class LockerParcelCollectedDataCollectedByEnumTypeTransformer {
  factory LockerParcelCollectedDataCollectedByEnumTypeTransformer() => _instance ??= const LockerParcelCollectedDataCollectedByEnumTypeTransformer._();

  const LockerParcelCollectedDataCollectedByEnumTypeTransformer._();

  String encode(LockerParcelCollectedDataCollectedByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LockerParcelCollectedDataCollectedByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LockerParcelCollectedDataCollectedByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENT': return LockerParcelCollectedDataCollectedByEnum.RECIPIENT;
        case r'TRUSTED_PERSON': return LockerParcelCollectedDataCollectedByEnum.TRUSTED_PERSON;
        case r'COURIER': return LockerParcelCollectedDataCollectedByEnum.COURIER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LockerParcelCollectedDataCollectedByEnumTypeTransformer] instance.
  static LockerParcelCollectedDataCollectedByEnumTypeTransformer? _instance;
}


