//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentCreatedData {
  /// Returns a new [ShipmentCreatedData] instance.
  ShipmentCreatedData({
    required this.shipmentId,
    required this.trackingNumber,
    required this.type,
    required this.status,
    this.draft,
    this.senderCustomerId,
    this.senderPhoneHash,
    this.recipientPhoneHash,
    this.organizationId,
    required this.originLocationId,
    required this.destinationLocationId,
    required this.payer,
    required this.parcelCount,
    this.declaredValue,
    this.codAmount,
    this.priceTotal,
  });

  String shipmentId;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ShipmentType type;

  ShipmentStatus status;

  /// Створено як чернетку (DRAFT)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? draft;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? senderCustomerId;

  /// SHA-256 телефону в hex: події не носять самих номерів (6.2, party_shipment_index)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? senderPhoneHash;

  /// SHA-256 телефону в hex: події не носять самих номерів (6.2, party_shipment_index)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipientPhoneHash;

  /// Якщо створив бізнес через API-ключ
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  String originLocationId;

  String destinationLocationId;

  PayerType payer;

  /// Minimum value: 1
  /// Maximum value: 20
  int parcelCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? declaredValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? codAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? priceTotal;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentCreatedData &&
    other.shipmentId == shipmentId &&
    other.trackingNumber == trackingNumber &&
    other.type == type &&
    other.status == status &&
    other.draft == draft &&
    other.senderCustomerId == senderCustomerId &&
    other.senderPhoneHash == senderPhoneHash &&
    other.recipientPhoneHash == recipientPhoneHash &&
    other.organizationId == organizationId &&
    other.originLocationId == originLocationId &&
    other.destinationLocationId == destinationLocationId &&
    other.payer == payer &&
    other.parcelCount == parcelCount &&
    other.declaredValue == declaredValue &&
    other.codAmount == codAmount &&
    other.priceTotal == priceTotal;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (trackingNumber.hashCode) +
    (type.hashCode) +
    (status.hashCode) +
    (draft == null ? 0 : draft!.hashCode) +
    (senderCustomerId == null ? 0 : senderCustomerId!.hashCode) +
    (senderPhoneHash == null ? 0 : senderPhoneHash!.hashCode) +
    (recipientPhoneHash == null ? 0 : recipientPhoneHash!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (originLocationId.hashCode) +
    (destinationLocationId.hashCode) +
    (payer.hashCode) +
    (parcelCount.hashCode) +
    (declaredValue == null ? 0 : declaredValue!.hashCode) +
    (codAmount == null ? 0 : codAmount!.hashCode) +
    (priceTotal == null ? 0 : priceTotal!.hashCode);

  @override
  String toString() => 'ShipmentCreatedData[shipmentId=$shipmentId, trackingNumber=$trackingNumber, type=$type, status=$status, draft=$draft, senderCustomerId=$senderCustomerId, senderPhoneHash=$senderPhoneHash, recipientPhoneHash=$recipientPhoneHash, organizationId=$organizationId, originLocationId=$originLocationId, destinationLocationId=$destinationLocationId, payer=$payer, parcelCount=$parcelCount, declaredValue=$declaredValue, codAmount=$codAmount, priceTotal=$priceTotal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'trackingNumber'] = this.trackingNumber;
      json[r'type'] = this.type;
      json[r'status'] = this.status;
    if (this.draft != null) {
      json[r'draft'] = this.draft;
    } else {
      json[r'draft'] = null;
    }
    if (this.senderCustomerId != null) {
      json[r'senderCustomerId'] = this.senderCustomerId;
    } else {
      json[r'senderCustomerId'] = null;
    }
    if (this.senderPhoneHash != null) {
      json[r'senderPhoneHash'] = this.senderPhoneHash;
    } else {
      json[r'senderPhoneHash'] = null;
    }
    if (this.recipientPhoneHash != null) {
      json[r'recipientPhoneHash'] = this.recipientPhoneHash;
    } else {
      json[r'recipientPhoneHash'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
      json[r'originLocationId'] = this.originLocationId;
      json[r'destinationLocationId'] = this.destinationLocationId;
      json[r'payer'] = this.payer;
      json[r'parcelCount'] = this.parcelCount;
    if (this.declaredValue != null) {
      json[r'declaredValue'] = this.declaredValue;
    } else {
      json[r'declaredValue'] = null;
    }
    if (this.codAmount != null) {
      json[r'codAmount'] = this.codAmount;
    } else {
      json[r'codAmount'] = null;
    }
    if (this.priceTotal != null) {
      json[r'priceTotal'] = this.priceTotal;
    } else {
      json[r'priceTotal'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentCreatedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentCreatedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentCreatedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentCreatedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentCreatedData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        type: ShipmentType.fromJson(json[r'type'])!,
        status: ShipmentStatus.fromJson(json[r'status'])!,
        draft: mapValueOfType<bool>(json, r'draft'),
        senderCustomerId: mapValueOfType<String>(json, r'senderCustomerId'),
        senderPhoneHash: mapValueOfType<String>(json, r'senderPhoneHash'),
        recipientPhoneHash: mapValueOfType<String>(json, r'recipientPhoneHash'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        originLocationId: mapValueOfType<String>(json, r'originLocationId')!,
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId')!,
        payer: PayerType.fromJson(json[r'payer'])!,
        parcelCount: mapValueOfType<int>(json, r'parcelCount')!,
        declaredValue: Money.fromJson(json[r'declaredValue']),
        codAmount: Money.fromJson(json[r'codAmount']),
        priceTotal: Money.fromJson(json[r'priceTotal']),
      );
    }
    return null;
  }

  static List<ShipmentCreatedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentCreatedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentCreatedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentCreatedData> mapFromJson(dynamic json) {
    final map = <String, ShipmentCreatedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentCreatedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentCreatedData-objects as value to a dart map
  static Map<String, List<ShipmentCreatedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentCreatedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentCreatedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'trackingNumber',
    'type',
    'status',
    'originLocationId',
    'destinationLocationId',
    'payer',
    'parcelCount',
  };
}

