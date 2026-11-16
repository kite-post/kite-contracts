//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentStatusChangedData {
  /// Returns a new [ShipmentStatusChangedData] instance.
  ShipmentStatusChangedData({
    required this.shipmentId,
    required this.trackingNumber,
    this.parcelId,
    required this.statusBefore,
    required this.statusAfter,
    required this.eventCode,
    this.transition,
    this.locationId,
    this.causeScanEventId,
    this.storageFreeUntil,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  /// Місце, скан якого зрушив стан; для відправлення з одним місцем збігається
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parcelId;

  ShipmentStatus statusBefore;

  ShipmentStatus statusAfter;

  /// Код події з каталогу 8.2
  String eventCode;

  /// Перехід стейт-машини з 7.2
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationId;

  /// Подія скану, яка привела до переходу
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? causeScanEventId;

  /// Для T7 — старт таймера безкоштовного зберігання (7.3)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? storageFreeUntil;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentStatusChangedData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.parcelId == parcelId &&
    other.statusBefore == statusBefore &&
    other.statusAfter == statusAfter &&
    other.eventCode == eventCode &&
    other.transition == transition &&
    other.locationId == locationId &&
    other.causeScanEventId == causeScanEventId &&
    other.storageFreeUntil == storageFreeUntil;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (parcelId == null ? 0 : parcelId!.hashCode) +
    (statusBefore.hashCode) +
    (statusAfter.hashCode) +
    (eventCode.hashCode) +
    (transition == null ? 0 : transition!.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (causeScanEventId == null ? 0 : causeScanEventId!.hashCode) +
    (storageFreeUntil == null ? 0 : storageFreeUntil!.hashCode);

  @override
  String toString() => 'ShipmentStatusChangedData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, parcelId=$parcelId, statusBefore=$statusBefore, statusAfter=$statusAfter, eventCode=$eventCode, transition=$transition, locationId=$locationId, causeScanEventId=$causeScanEventId, storageFreeUntil=$storageFreeUntil]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
    if (this.parcelId != null) {
      json[r'parcelId'] = this.parcelId;
    } else {
      json[r'parcelId'] = null;
    }
      json[r'statusBefore'] = this.statusBefore;
      json[r'statusAfter'] = this.statusAfter;
      json[r'eventCode'] = this.eventCode;
    if (this.transition != null) {
      json[r'transition'] = this.transition;
    } else {
      json[r'transition'] = null;
    }
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
    if (this.causeScanEventId != null) {
      json[r'causeScanEventId'] = this.causeScanEventId;
    } else {
      json[r'causeScanEventId'] = null;
    }
    if (this.storageFreeUntil != null) {
      json[r'storageFreeUntil'] = this.storageFreeUntil!.toUtc().toIso8601String();
    } else {
      json[r'storageFreeUntil'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentStatusChangedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentStatusChangedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentStatusChangedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentStatusChangedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentStatusChangedData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        parcelId: mapValueOfType<String>(json, r'parcelId'),
        statusBefore: ShipmentStatus.fromJson(json[r'statusBefore'])!,
        statusAfter: ShipmentStatus.fromJson(json[r'statusAfter'])!,
        eventCode: mapValueOfType<String>(json, r'eventCode')!,
        transition: mapValueOfType<String>(json, r'transition'),
        locationId: mapValueOfType<String>(json, r'locationId'),
        causeScanEventId: mapValueOfType<String>(json, r'causeScanEventId'),
        storageFreeUntil: mapDateTime(json, r'storageFreeUntil', r''),
      );
    }
    return null;
  }

  static List<ShipmentStatusChangedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentStatusChangedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentStatusChangedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentStatusChangedData> mapFromJson(dynamic json) {
    final map = <String, ShipmentStatusChangedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentStatusChangedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentStatusChangedData-objects as value to a dart map
  static Map<String, List<ShipmentStatusChangedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentStatusChangedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentStatusChangedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'statusBefore',
    'statusAfter',
    'eventCode',
  };
}

