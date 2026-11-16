//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PaymentCodCollectedData {
  /// Returns a new [PaymentCodCollectedData] instance.
  PaymentCodCollectedData({
    required this.codId,
    required this.shipmentId,
    required this.amount,
    this.feeAmount,
    required this.method,
    this.collectedAtLocationId,
    this.collectedByUserId,
  });

  String codId;

  String shipmentId;

  Money amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? feeAmount;

  PaymentMethod method;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectedAtLocationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectedByUserId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentCodCollectedData &&
    other.codId == codId &&
    other.shipmentId == shipmentId &&
    other.amount == amount &&
    other.feeAmount == feeAmount &&
    other.method == method &&
    other.collectedAtLocationId == collectedAtLocationId &&
    other.collectedByUserId == collectedByUserId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codId.hashCode) +
    (shipmentId.hashCode) +
    (amount.hashCode) +
    (feeAmount == null ? 0 : feeAmount!.hashCode) +
    (method.hashCode) +
    (collectedAtLocationId == null ? 0 : collectedAtLocationId!.hashCode) +
    (collectedByUserId == null ? 0 : collectedByUserId!.hashCode);

  @override
  String toString() => 'PaymentCodCollectedData[codId=$codId, shipmentId=$shipmentId, amount=$amount, feeAmount=$feeAmount, method=$method, collectedAtLocationId=$collectedAtLocationId, collectedByUserId=$collectedByUserId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'codId'] = this.codId;
      json[r'shipmentId'] = this.shipmentId;
      json[r'amount'] = this.amount;
    if (this.feeAmount != null) {
      json[r'feeAmount'] = this.feeAmount;
    } else {
      json[r'feeAmount'] = null;
    }
      json[r'method'] = this.method;
    if (this.collectedAtLocationId != null) {
      json[r'collectedAtLocationId'] = this.collectedAtLocationId;
    } else {
      json[r'collectedAtLocationId'] = null;
    }
    if (this.collectedByUserId != null) {
      json[r'collectedByUserId'] = this.collectedByUserId;
    } else {
      json[r'collectedByUserId'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentCodCollectedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentCodCollectedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentCodCollectedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentCodCollectedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentCodCollectedData(
        codId: mapValueOfType<String>(json, r'codId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        amount: Money.fromJson(json[r'amount'])!,
        feeAmount: Money.fromJson(json[r'feeAmount']),
        method: PaymentMethod.fromJson(json[r'method'])!,
        collectedAtLocationId: mapValueOfType<String>(json, r'collectedAtLocationId'),
        collectedByUserId: mapValueOfType<String>(json, r'collectedByUserId'),
      );
    }
    return null;
  }

  static List<PaymentCodCollectedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentCodCollectedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentCodCollectedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentCodCollectedData> mapFromJson(dynamic json) {
    final map = <String, PaymentCodCollectedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentCodCollectedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentCodCollectedData-objects as value to a dart map
  static Map<String, List<PaymentCodCollectedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentCodCollectedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentCodCollectedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'codId',
    'shipmentId',
    'amount',
    'method',
  };
}

