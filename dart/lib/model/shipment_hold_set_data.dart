//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentHoldSetData {
  /// Returns a new [ShipmentHoldSetData] instance.
  ShipmentHoldSetData({
    required this.shipmentId,
    required this.trackingNumber,
    this.actionId,
    required this.holdUntil,
    this.requestedBy,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actionId;

  DateTime holdUntil;

  ShipmentHoldSetDataRequestedByEnum? requestedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentHoldSetData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.actionId == actionId &&
    other.holdUntil == holdUntil &&
    other.requestedBy == requestedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (actionId == null ? 0 : actionId!.hashCode) +
    (holdUntil.hashCode) +
    (requestedBy == null ? 0 : requestedBy!.hashCode);

  @override
  String toString() => 'ShipmentHoldSetData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, actionId=$actionId, holdUntil=$holdUntil, requestedBy=$requestedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
    if (this.actionId != null) {
      json[r'actionId'] = this.actionId;
    } else {
      json[r'actionId'] = null;
    }
      json[r'holdUntil'] = _dateFormatter.format(this.holdUntil.toUtc());
    if (this.requestedBy != null) {
      json[r'requestedBy'] = this.requestedBy;
    } else {
      json[r'requestedBy'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentHoldSetData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentHoldSetData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentHoldSetData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentHoldSetData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentHoldSetData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        actionId: mapValueOfType<String>(json, r'actionId'),
        holdUntil: mapDateTime(json, r'holdUntil', r'')!,
        requestedBy: ShipmentHoldSetDataRequestedByEnum.fromJson(json[r'requestedBy']),
      );
    }
    return null;
  }

  static List<ShipmentHoldSetData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentHoldSetData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentHoldSetData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentHoldSetData> mapFromJson(dynamic json) {
    final map = <String, ShipmentHoldSetData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentHoldSetData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentHoldSetData-objects as value to a dart map
  static Map<String, List<ShipmentHoldSetData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentHoldSetData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentHoldSetData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'holdUntil',
  };
}


class ShipmentHoldSetDataRequestedByEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentHoldSetDataRequestedByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENT = ShipmentHoldSetDataRequestedByEnum._(r'RECIPIENT');
  static const SUPPORT = ShipmentHoldSetDataRequestedByEnum._(r'SUPPORT');
  static const SYSTEM = ShipmentHoldSetDataRequestedByEnum._(r'SYSTEM');

  /// List of all possible values in this [enum][ShipmentHoldSetDataRequestedByEnum].
  static const values = <ShipmentHoldSetDataRequestedByEnum>[
    RECIPIENT,
    SUPPORT,
    SYSTEM,
  ];

  static ShipmentHoldSetDataRequestedByEnum? fromJson(dynamic value) => ShipmentHoldSetDataRequestedByEnumTypeTransformer().decode(value);

  static List<ShipmentHoldSetDataRequestedByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentHoldSetDataRequestedByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentHoldSetDataRequestedByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentHoldSetDataRequestedByEnum] to String,
/// and [decode] dynamic data back to [ShipmentHoldSetDataRequestedByEnum].
class ShipmentHoldSetDataRequestedByEnumTypeTransformer {
  factory ShipmentHoldSetDataRequestedByEnumTypeTransformer() => _instance ??= const ShipmentHoldSetDataRequestedByEnumTypeTransformer._();

  const ShipmentHoldSetDataRequestedByEnumTypeTransformer._();

  String encode(ShipmentHoldSetDataRequestedByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentHoldSetDataRequestedByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentHoldSetDataRequestedByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENT': return ShipmentHoldSetDataRequestedByEnum.RECIPIENT;
        case r'SUPPORT': return ShipmentHoldSetDataRequestedByEnum.SUPPORT;
        case r'SYSTEM': return ShipmentHoldSetDataRequestedByEnum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentHoldSetDataRequestedByEnumTypeTransformer] instance.
  static ShipmentHoldSetDataRequestedByEnumTypeTransformer? _instance;
}


