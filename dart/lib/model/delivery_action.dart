//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class DeliveryAction {
  /// Returns a new [DeliveryAction] instance.
  DeliveryAction({
    required this.id,
    required this.shipmentId,
    required this.action,
    required this.status,
    this.price,
    this.payment,
    required this.requestedAt,
  });

  String id;

  String shipmentId;

  DeliveryActionType action;

  DeliveryActionStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Payment? payment;

  DateTime requestedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliveryAction &&
    other.id == id &&
    other.shipmentId == shipmentId &&
    other.action == action &&
    other.status == status &&
    other.price == price &&
    other.payment == payment &&
    other.requestedAt == requestedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (shipmentId.hashCode) +
    (action.hashCode) +
    (status.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (payment == null ? 0 : payment!.hashCode) +
    (requestedAt.hashCode);

  @override
  String toString() => 'DeliveryAction[id=$id, shipmentId=$shipmentId, action=$action, status=$status, price=$price, payment=$payment, requestedAt=$requestedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'shipmentId'] = this.shipmentId;
      json[r'action'] = this.action;
      json[r'status'] = this.status;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.payment != null) {
      json[r'payment'] = this.payment;
    } else {
      json[r'payment'] = null;
    }
      json[r'requestedAt'] = this.requestedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DeliveryAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliveryAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliveryAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliveryAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliveryAction(
        id: mapValueOfType<String>(json, r'id')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        action: DeliveryActionType.fromJson(json[r'action'])!,
        status: DeliveryActionStatus.fromJson(json[r'status'])!,
        price: Money.fromJson(json[r'price']),
        payment: Payment.fromJson(json[r'payment']),
        requestedAt: mapDateTime(json, r'requestedAt', r'')!,
      );
    }
    return null;
  }

  static List<DeliveryAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliveryAction> mapFromJson(dynamic json) {
    final map = <String, DeliveryAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliveryAction-objects as value to a dart map
  static Map<String, List<DeliveryAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliveryAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliveryAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'shipmentId',
    'action',
    'status',
    'requestedAt',
  };
}

