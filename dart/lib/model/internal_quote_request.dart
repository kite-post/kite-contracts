//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class InternalQuoteRequest {
  /// Returns a new [InternalQuoteRequest] instance.
  InternalQuoteRequest({
    required this.type,
    required this.originLocationId,
    required this.destinationLocationId,
    this.parcels = const [],
    this.declaredValue,
    this.codAmount,
    this.services = const [],
    this.promoCode,
    this.shipmentId,
    this.payer,
    this.zone,
  });

  ShipmentType type;

  String originLocationId;

  String destinationLocationId;

  List<ParcelRequest> parcels;

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

  List<ServiceCode> services;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? promoCode;

  /// Накладна, для якої рахуємо; порожньо — попередній розрахунок
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
  PayerType? payer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeliveryZone? zone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InternalQuoteRequest &&
    other.type == type &&
    other.originLocationId == originLocationId &&
    other.destinationLocationId == destinationLocationId &&
    _deepEquality.equals(other.parcels, parcels) &&
    other.declaredValue == declaredValue &&
    other.codAmount == codAmount &&
    _deepEquality.equals(other.services, services) &&
    other.promoCode == promoCode &&
    other.shipmentId == shipmentId &&
    other.payer == payer &&
    other.zone == zone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (originLocationId.hashCode) +
    (destinationLocationId.hashCode) +
    (parcels.hashCode) +
    (declaredValue == null ? 0 : declaredValue!.hashCode) +
    (codAmount == null ? 0 : codAmount!.hashCode) +
    (services.hashCode) +
    (promoCode == null ? 0 : promoCode!.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (payer == null ? 0 : payer!.hashCode) +
    (zone == null ? 0 : zone!.hashCode);

  @override
  String toString() => 'InternalQuoteRequest[type=$type, originLocationId=$originLocationId, destinationLocationId=$destinationLocationId, parcels=$parcels, declaredValue=$declaredValue, codAmount=$codAmount, services=$services, promoCode=$promoCode, shipmentId=$shipmentId, payer=$payer, zone=$zone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'originLocationId'] = this.originLocationId;
      json[r'destinationLocationId'] = this.destinationLocationId;
      json[r'parcels'] = this.parcels;
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
      json[r'services'] = this.services;
    if (this.promoCode != null) {
      json[r'promoCode'] = this.promoCode;
    } else {
      json[r'promoCode'] = null;
    }
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.payer != null) {
      json[r'payer'] = this.payer;
    } else {
      json[r'payer'] = null;
    }
    if (this.zone != null) {
      json[r'zone'] = this.zone;
    } else {
      json[r'zone'] = null;
    }
    return json;
  }

  /// Returns a new [InternalQuoteRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InternalQuoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InternalQuoteRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InternalQuoteRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InternalQuoteRequest(
        type: ShipmentType.fromJson(json[r'type'])!,
        originLocationId: mapValueOfType<String>(json, r'originLocationId')!,
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId')!,
        parcels: ParcelRequest.listFromJson(json[r'parcels']),
        declaredValue: Money.fromJson(json[r'declaredValue']),
        codAmount: Money.fromJson(json[r'codAmount']),
        services: ServiceCode.listFromJson(json[r'services']),
        promoCode: mapValueOfType<String>(json, r'promoCode'),
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        payer: PayerType.fromJson(json[r'payer']),
        zone: DeliveryZone.fromJson(json[r'zone']),
      );
    }
    return null;
  }

  static List<InternalQuoteRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InternalQuoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InternalQuoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InternalQuoteRequest> mapFromJson(dynamic json) {
    final map = <String, InternalQuoteRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InternalQuoteRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InternalQuoteRequest-objects as value to a dart map
  static Map<String, List<InternalQuoteRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InternalQuoteRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InternalQuoteRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'originLocationId',
    'destinationLocationId',
    'parcels',
  };
}

