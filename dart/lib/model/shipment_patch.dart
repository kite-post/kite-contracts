//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentPatch {
  /// Returns a new [ShipmentPatch] instance.
  ShipmentPatch({
    this.type,
    this.recipient,
    this.originLocationId,
    this.destinationLocationId,
    this.payer,
    this.declaredValue,
    this.codAmount,
    this.parcels = const [],
    this.services = const [],
    this.comment,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShipmentType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Party? recipient;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originLocationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationLocationId;

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
  String? comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentPatch &&
    other.type == type &&
    other.recipient == recipient &&
    other.originLocationId == originLocationId &&
    other.destinationLocationId == destinationLocationId &&
    other.payer == payer &&
    other.declaredValue == declaredValue &&
    other.codAmount == codAmount &&
    _deepEquality.equals(other.parcels, parcels) &&
    _deepEquality.equals(other.services, services) &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (originLocationId == null ? 0 : originLocationId!.hashCode) +
    (destinationLocationId == null ? 0 : destinationLocationId!.hashCode) +
    (payer == null ? 0 : payer!.hashCode) +
    (declaredValue == null ? 0 : declaredValue!.hashCode) +
    (codAmount == null ? 0 : codAmount!.hashCode) +
    (parcels.hashCode) +
    (services.hashCode) +
    (comment == null ? 0 : comment!.hashCode);

  @override
  String toString() => 'ShipmentPatch[type=$type, recipient=$recipient, originLocationId=$originLocationId, destinationLocationId=$destinationLocationId, payer=$payer, declaredValue=$declaredValue, codAmount=$codAmount, parcels=$parcels, services=$services, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.originLocationId != null) {
      json[r'originLocationId'] = this.originLocationId;
    } else {
      json[r'originLocationId'] = null;
    }
    if (this.destinationLocationId != null) {
      json[r'destinationLocationId'] = this.destinationLocationId;
    } else {
      json[r'destinationLocationId'] = null;
    }
    if (this.payer != null) {
      json[r'payer'] = this.payer;
    } else {
      json[r'payer'] = null;
    }
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
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentPatch(
        type: ShipmentType.fromJson(json[r'type']),
        recipient: Party.fromJson(json[r'recipient']),
        originLocationId: mapValueOfType<String>(json, r'originLocationId'),
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId'),
        payer: PayerType.fromJson(json[r'payer']),
        declaredValue: Money.fromJson(json[r'declaredValue']),
        codAmount: Money.fromJson(json[r'codAmount']),
        parcels: ParcelRequest.listFromJson(json[r'parcels']),
        services: ShipmentServiceItem.listFromJson(json[r'services']),
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<ShipmentPatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentPatch> mapFromJson(dynamic json) {
    final map = <String, ShipmentPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentPatch-objects as value to a dart map
  static Map<String, List<ShipmentPatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentPatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentPatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

