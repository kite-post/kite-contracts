//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentCancelledData {
  /// Returns a new [ShipmentCancelledData] instance.
  ShipmentCancelledData({
    required this.shipmentId,
    required this.trackingNumber,
    required this.statusBefore,
    this.reason,
    this.cancelledBy,
    this.refundPaymentId,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ShipmentStatus statusBefore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// SYSTEM — автоскасування через 30 діб (7.3)
  ShipmentCancelledDataCancelledByEnum? cancelledBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundPaymentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentCancelledData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.statusBefore == statusBefore &&
    other.reason == reason &&
    other.cancelledBy == cancelledBy &&
    other.refundPaymentId == refundPaymentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (statusBefore.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (cancelledBy == null ? 0 : cancelledBy!.hashCode) +
    (refundPaymentId == null ? 0 : refundPaymentId!.hashCode);

  @override
  String toString() => 'ShipmentCancelledData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, statusBefore=$statusBefore, reason=$reason, cancelledBy=$cancelledBy, refundPaymentId=$refundPaymentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
      json[r'statusBefore'] = this.statusBefore;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.cancelledBy != null) {
      json[r'cancelledBy'] = this.cancelledBy;
    } else {
      json[r'cancelledBy'] = null;
    }
    if (this.refundPaymentId != null) {
      json[r'refundPaymentId'] = this.refundPaymentId;
    } else {
      json[r'refundPaymentId'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentCancelledData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentCancelledData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentCancelledData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentCancelledData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentCancelledData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        statusBefore: ShipmentStatus.fromJson(json[r'statusBefore'])!,
        reason: mapValueOfType<String>(json, r'reason'),
        cancelledBy: ShipmentCancelledDataCancelledByEnum.fromJson(json[r'cancelledBy']),
        refundPaymentId: mapValueOfType<String>(json, r'refundPaymentId'),
      );
    }
    return null;
  }

  static List<ShipmentCancelledData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentCancelledData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentCancelledData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentCancelledData> mapFromJson(dynamic json) {
    final map = <String, ShipmentCancelledData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentCancelledData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentCancelledData-objects as value to a dart map
  static Map<String, List<ShipmentCancelledData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentCancelledData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentCancelledData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'statusBefore',
  };
}

/// SYSTEM — автоскасування через 30 діб (7.3)
class ShipmentCancelledDataCancelledByEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipmentCancelledDataCancelledByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SENDER = ShipmentCancelledDataCancelledByEnum._(r'SENDER');
  static const SYSTEM = ShipmentCancelledDataCancelledByEnum._(r'SYSTEM');

  /// List of all possible values in this [enum][ShipmentCancelledDataCancelledByEnum].
  static const values = <ShipmentCancelledDataCancelledByEnum>[
    SENDER,
    SYSTEM,
  ];

  static ShipmentCancelledDataCancelledByEnum? fromJson(dynamic value) => ShipmentCancelledDataCancelledByEnumTypeTransformer().decode(value);

  static List<ShipmentCancelledDataCancelledByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentCancelledDataCancelledByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentCancelledDataCancelledByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentCancelledDataCancelledByEnum] to String,
/// and [decode] dynamic data back to [ShipmentCancelledDataCancelledByEnum].
class ShipmentCancelledDataCancelledByEnumTypeTransformer {
  factory ShipmentCancelledDataCancelledByEnumTypeTransformer() => _instance ??= const ShipmentCancelledDataCancelledByEnumTypeTransformer._();

  const ShipmentCancelledDataCancelledByEnumTypeTransformer._();

  String encode(ShipmentCancelledDataCancelledByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentCancelledDataCancelledByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentCancelledDataCancelledByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SENDER': return ShipmentCancelledDataCancelledByEnum.SENDER;
        case r'SYSTEM': return ShipmentCancelledDataCancelledByEnum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentCancelledDataCancelledByEnumTypeTransformer] instance.
  static ShipmentCancelledDataCancelledByEnumTypeTransformer? _instance;
}


