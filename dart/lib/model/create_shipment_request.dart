//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CreateShipmentRequest {
  /// Returns a new [CreateShipmentRequest] instance.
  CreateShipmentRequest({
    this.draft = false,
    required this.type,
    this.sender,
    required this.recipient,
    required this.originLocationId,
    required this.destinationLocationId,
    required this.payer,
    this.declaredValue,
    this.codAmount,
    this.parcels = const [],
    this.services = const [],
    this.promoCode,
    this.comment,
  });

  /// true — лишити в DRAFT; false — одразу підтвердити (T1)
  bool draft;

  ShipmentType type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Party? sender;

  Party recipient;

  String originLocationId;

  String destinationLocationId;

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

  List<ParcelRequest> parcels;

  List<ShipmentServiceItem> services;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? promoCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateShipmentRequest &&
    other.draft == draft &&
    other.type == type &&
    other.sender == sender &&
    other.recipient == recipient &&
    other.originLocationId == originLocationId &&
    other.destinationLocationId == destinationLocationId &&
    other.payer == payer &&
    other.declaredValue == declaredValue &&
    other.codAmount == codAmount &&
    _deepEquality.equals(other.parcels, parcels) &&
    _deepEquality.equals(other.services, services) &&
    other.promoCode == promoCode &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (draft.hashCode) +
    (type.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipient.hashCode) +
    (originLocationId.hashCode) +
    (destinationLocationId.hashCode) +
    (payer.hashCode) +
    (declaredValue == null ? 0 : declaredValue!.hashCode) +
    (codAmount == null ? 0 : codAmount!.hashCode) +
    (parcels.hashCode) +
    (services.hashCode) +
    (promoCode == null ? 0 : promoCode!.hashCode) +
    (comment == null ? 0 : comment!.hashCode);

  @override
  String toString() => 'CreateShipmentRequest[draft=$draft, type=$type, sender=$sender, recipient=$recipient, originLocationId=$originLocationId, destinationLocationId=$destinationLocationId, payer=$payer, declaredValue=$declaredValue, codAmount=$codAmount, parcels=$parcels, services=$services, promoCode=$promoCode, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'draft'] = this.draft;
      json[r'type'] = this.type;
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
      json[r'recipient'] = this.recipient;
      json[r'originLocationId'] = this.originLocationId;
      json[r'destinationLocationId'] = this.destinationLocationId;
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
      json[r'parcels'] = this.parcels;
      json[r'services'] = this.services;
    if (this.promoCode != null) {
      json[r'promoCode'] = this.promoCode;
    } else {
      json[r'promoCode'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    return json;
  }

  /// Returns a new [CreateShipmentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateShipmentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateShipmentRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateShipmentRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateShipmentRequest(
        draft: mapValueOfType<bool>(json, r'draft') ?? false,
        type: ShipmentType.fromJson(json[r'type'])!,
        sender: Party.fromJson(json[r'sender']),
        recipient: Party.fromJson(json[r'recipient'])!,
        originLocationId: mapValueOfType<String>(json, r'originLocationId')!,
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId')!,
        payer: PayerType.fromJson(json[r'payer'])!,
        declaredValue: Money.fromJson(json[r'declaredValue']),
        codAmount: Money.fromJson(json[r'codAmount']),
        parcels: ParcelRequest.listFromJson(json[r'parcels']),
        services: ShipmentServiceItem.listFromJson(json[r'services']),
        promoCode: mapValueOfType<String>(json, r'promoCode'),
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<CreateShipmentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateShipmentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateShipmentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateShipmentRequest> mapFromJson(dynamic json) {
    final map = <String, CreateShipmentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateShipmentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateShipmentRequest-objects as value to a dart map
  static Map<String, List<CreateShipmentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateShipmentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateShipmentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'recipient',
    'originLocationId',
    'destinationLocationId',
    'payer',
    'parcels',
  };
}

