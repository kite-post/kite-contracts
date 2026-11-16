//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Shipment {
  /// Returns a new [Shipment] instance.
  Shipment({
    required this.id,
    required this.trackingNumber,
    required this.type,
    required this.status,
    this.statusText,
    this.partiallyDelivered,
    required this.sender,
    required this.recipient,
    required this.origin,
    required this.destination,
    required this.payer,
    this.declaredValue,
    this.codAmount,
    this.priceTotal,
    this.paid,
    this.parcels = const [],
    this.services = const [],
    this.route = const [],
    this.eta,
    this.returnOf,
    this.storageFreeUntil,
    this.holdUntil,
    this.version,
    required this.createdAt,
    this.updatedAt,
  });

  String id;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ShipmentType type;

  ShipmentStatus status;

  /// Формулювання для клієнта (7.1), мовою з `Accept-Language`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusText;

  /// Частина місць уже видана (7, вступ)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? partiallyDelivered;

  Party sender;

  Party recipient;

  LocationRef origin;

  LocationRef destination;

  PayerType payer;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? paid;

  List<Parcel> parcels;

  List<ShipmentServiceItem> services;

  List<RouteStop> route;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EtaPrediction? eta;

  /// Якщо це повернення — ідентифікатор оригіналу
  String? returnOf;

  DateTime? storageFreeUntil;

  DateTime? holdUntil;

  /// Оптимістичне блокування (6.1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Shipment &&
    other.id == id &&
    other.trackingNumber == trackingNumber &&
    other.type == type &&
    other.status == status &&
    other.statusText == statusText &&
    other.partiallyDelivered == partiallyDelivered &&
    other.sender == sender &&
    other.recipient == recipient &&
    other.origin == origin &&
    other.destination == destination &&
    other.payer == payer &&
    other.declaredValue == declaredValue &&
    other.codAmount == codAmount &&
    other.priceTotal == priceTotal &&
    other.paid == paid &&
    _deepEquality.equals(other.parcels, parcels) &&
    _deepEquality.equals(other.services, services) &&
    _deepEquality.equals(other.route, route) &&
    other.eta == eta &&
    other.returnOf == returnOf &&
    other.storageFreeUntil == storageFreeUntil &&
    other.holdUntil == holdUntil &&
    other.version == version &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (trackingNumber.hashCode) +
    (type.hashCode) +
    (status.hashCode) +
    (statusText == null ? 0 : statusText!.hashCode) +
    (partiallyDelivered == null ? 0 : partiallyDelivered!.hashCode) +
    (sender.hashCode) +
    (recipient.hashCode) +
    (origin.hashCode) +
    (destination.hashCode) +
    (payer.hashCode) +
    (declaredValue == null ? 0 : declaredValue!.hashCode) +
    (codAmount == null ? 0 : codAmount!.hashCode) +
    (priceTotal == null ? 0 : priceTotal!.hashCode) +
    (paid == null ? 0 : paid!.hashCode) +
    (parcels.hashCode) +
    (services.hashCode) +
    (route.hashCode) +
    (eta == null ? 0 : eta!.hashCode) +
    (returnOf == null ? 0 : returnOf!.hashCode) +
    (storageFreeUntil == null ? 0 : storageFreeUntil!.hashCode) +
    (holdUntil == null ? 0 : holdUntil!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Shipment[id=$id, trackingNumber=$trackingNumber, type=$type, status=$status, statusText=$statusText, partiallyDelivered=$partiallyDelivered, sender=$sender, recipient=$recipient, origin=$origin, destination=$destination, payer=$payer, declaredValue=$declaredValue, codAmount=$codAmount, priceTotal=$priceTotal, paid=$paid, parcels=$parcels, services=$services, route=$route, eta=$eta, returnOf=$returnOf, storageFreeUntil=$storageFreeUntil, holdUntil=$holdUntil, version=$version, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'trackingNumber'] = this.trackingNumber;
      json[r'type'] = this.type;
      json[r'status'] = this.status;
    if (this.statusText != null) {
      json[r'statusText'] = this.statusText;
    } else {
      json[r'statusText'] = null;
    }
    if (this.partiallyDelivered != null) {
      json[r'partiallyDelivered'] = this.partiallyDelivered;
    } else {
      json[r'partiallyDelivered'] = null;
    }
      json[r'sender'] = this.sender;
      json[r'recipient'] = this.recipient;
      json[r'origin'] = this.origin;
      json[r'destination'] = this.destination;
      json[r'payer'] = this.payer;
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
    if (this.paid != null) {
      json[r'paid'] = this.paid;
    } else {
      json[r'paid'] = null;
    }
      json[r'parcels'] = this.parcels;
      json[r'services'] = this.services;
      json[r'route'] = this.route;
    if (this.eta != null) {
      json[r'eta'] = this.eta;
    } else {
      json[r'eta'] = null;
    }
    if (this.returnOf != null) {
      json[r'returnOf'] = this.returnOf;
    } else {
      json[r'returnOf'] = null;
    }
    if (this.storageFreeUntil != null) {
      json[r'storageFreeUntil'] = this.storageFreeUntil!.toUtc().toIso8601String();
    } else {
      json[r'storageFreeUntil'] = null;
    }
    if (this.holdUntil != null) {
      json[r'holdUntil'] = this.holdUntil!.toUtc().toIso8601String();
    } else {
      json[r'holdUntil'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Shipment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Shipment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Shipment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Shipment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Shipment(
        id: mapValueOfType<String>(json, r'id')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        type: ShipmentType.fromJson(json[r'type'])!,
        status: ShipmentStatus.fromJson(json[r'status'])!,
        statusText: mapValueOfType<String>(json, r'statusText'),
        partiallyDelivered: mapValueOfType<bool>(json, r'partiallyDelivered'),
        sender: Party.fromJson(json[r'sender'])!,
        recipient: Party.fromJson(json[r'recipient'])!,
        origin: LocationRef.fromJson(json[r'origin'])!,
        destination: LocationRef.fromJson(json[r'destination'])!,
        payer: PayerType.fromJson(json[r'payer'])!,
        declaredValue: Money.fromJson(json[r'declaredValue']),
        codAmount: Money.fromJson(json[r'codAmount']),
        priceTotal: Money.fromJson(json[r'priceTotal']),
        paid: mapValueOfType<bool>(json, r'paid'),
        parcels: Parcel.listFromJson(json[r'parcels']),
        services: ShipmentServiceItem.listFromJson(json[r'services']),
        route: RouteStop.listFromJson(json[r'route']),
        eta: EtaPrediction.fromJson(json[r'eta']),
        returnOf: mapValueOfType<String>(json, r'returnOf'),
        storageFreeUntil: mapDateTime(json, r'storageFreeUntil', r''),
        holdUntil: mapDateTime(json, r'holdUntil', r''),
        version: mapValueOfType<int>(json, r'version'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<Shipment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Shipment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Shipment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Shipment> mapFromJson(dynamic json) {
    final map = <String, Shipment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Shipment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Shipment-objects as value to a dart map
  static Map<String, List<Shipment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Shipment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Shipment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'trackingNumber',
    'type',
    'status',
    'sender',
    'recipient',
    'origin',
    'destination',
    'payer',
    'parcels',
    'createdAt',
  };
}

