//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentReturnCreatedData {
  /// Returns a new [ShipmentReturnCreatedData] instance.
  ShipmentReturnCreatedData({
    required this.originalShipmentId,
    required this.returnShipmentId,
    required this.returnTrackingNumber,
    required this.reason,
    this.destinationLocationId,
  });

  String originalShipmentId;

  String returnShipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String returnTrackingNumber;

  ShipmentReturnCreatedDataReasonEnum reason;

  /// Куди повертаємо — точка відправника
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationLocationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentReturnCreatedData &&
    other.originalShipmentId == originalShipmentId &&
    other.returnShipmentId == returnShipmentId &&
    other.returnTrackingNumber == returnTrackingNumber &&
    other.reason == reason &&
    other.destinationLocationId == destinationLocationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (originalShipmentId.hashCode) +
    (returnShipmentId.hashCode) +
    (returnTrackingNumber.hashCode) +
    (reason.hashCode) +
    (destinationLocationId == null ? 0 : destinationLocationId!.hashCode);

  @override
  String toString() => 'ShipmentReturnCreatedData[originalShipmentId=$originalShipmentId, returnShipmentId=$returnShipmentId, returnTrackingNumber=$returnTrackingNumber, reason=$reason, destinationLocationId=$destinationLocationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'originalShipmentId'] = this.originalShipmentId;
      json[r'returnShipmentId'] = this.returnShipmentId;
      json[r'returnTrackingNumber'] = this.returnTrackingNumber;
      json[r'reason'] = this.reason;
    if (this.destinationLocationId != null) {
      json[r'destinationLocationId'] = this.destinationLocationId;
    } else {
      json[r'destinationLocationId'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentReturnCreatedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentReturnCreatedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentReturnCreatedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentReturnCreatedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentReturnCreatedData(
        originalShipmentId: mapValueOfType<String>(json, r'originalShipmentId')!,
        returnShipmentId: mapValueOfType<String>(json, r'returnShipmentId')!,
        returnTrackingNumber: mapValueOfType<String>(json, r'returnTrackingNumber')!,
        reason: ShipmentReturnCreatedDataReasonEnum.fromJson(json[r'reason'])!,
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId'),
      );
    }
    return null;
  }

  static List<ShipmentReturnCreatedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentReturnCreatedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentReturnCreatedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentReturnCreatedData> mapFromJson(dynamic json) {
    final map = <String, ShipmentReturnCreatedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentReturnCreatedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentReturnCreatedData-objects as value to a dart map
  static Map<String, List<ShipmentReturnCreatedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentReturnCreatedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentReturnCreatedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'originalShipmentId',
    'returnShipmentId',
    'returnTrackingNumber',
    'reason',
  };
}


class ShipmentReturnCreatedDataReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentReturnCreatedDataReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REFUSED = ShipmentReturnCreatedDataReasonEnum._(r'REFUSED');
  static const STORAGE_EXPIRED = ShipmentReturnCreatedDataReasonEnum._(r'STORAGE_EXPIRED');
  static const RECIPIENT_UNREACHABLE = ShipmentReturnCreatedDataReasonEnum._(r'RECIPIENT_UNREACHABLE');

  /// List of all possible values in this [enum][ShipmentReturnCreatedDataReasonEnum].
  static const values = <ShipmentReturnCreatedDataReasonEnum>[
    REFUSED,
    STORAGE_EXPIRED,
    RECIPIENT_UNREACHABLE,
  ];

  static ShipmentReturnCreatedDataReasonEnum? fromJson(dynamic value) => ShipmentReturnCreatedDataReasonEnumTypeTransformer().decode(value);

  static List<ShipmentReturnCreatedDataReasonEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentReturnCreatedDataReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentReturnCreatedDataReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentReturnCreatedDataReasonEnum] to String,
/// and [decode] dynamic data back to [ShipmentReturnCreatedDataReasonEnum].
class ShipmentReturnCreatedDataReasonEnumTypeTransformer {
  factory ShipmentReturnCreatedDataReasonEnumTypeTransformer() => _instance ??= const ShipmentReturnCreatedDataReasonEnumTypeTransformer._();

  const ShipmentReturnCreatedDataReasonEnumTypeTransformer._();

  String encode(ShipmentReturnCreatedDataReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentReturnCreatedDataReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentReturnCreatedDataReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REFUSED': return ShipmentReturnCreatedDataReasonEnum.REFUSED;
        case r'STORAGE_EXPIRED': return ShipmentReturnCreatedDataReasonEnum.STORAGE_EXPIRED;
        case r'RECIPIENT_UNREACHABLE': return ShipmentReturnCreatedDataReasonEnum.RECIPIENT_UNREACHABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentReturnCreatedDataReasonEnumTypeTransformer] instance.
  static ShipmentReturnCreatedDataReasonEnumTypeTransformer? _instance;
}


