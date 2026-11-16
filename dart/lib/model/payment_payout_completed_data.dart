//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PaymentPayoutCompletedData {
  /// Returns a new [PaymentPayoutCompletedData] instance.
  PaymentPayoutCompletedData({
    required this.payoutId,
    this.organizationId,
    this.customerId,
    required this.amount,
    this.ibanMask,
    this.shipmentCount,
    required this.periodFrom,
    required this.periodTo,
  });

  String payoutId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerId;

  Money amount;

  /// Останні чотири знаки рахунку — повного IBAN подія не носить
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ibanMask;

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shipmentCount;

  DateTime periodFrom;

  DateTime periodTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentPayoutCompletedData &&
    other.payoutId == payoutId &&
    other.organizationId == organizationId &&
    other.customerId == customerId &&
    other.amount == amount &&
    other.ibanMask == ibanMask &&
    other.shipmentCount == shipmentCount &&
    other.periodFrom == periodFrom &&
    other.periodTo == periodTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (payoutId.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (customerId == null ? 0 : customerId!.hashCode) +
    (amount.hashCode) +
    (ibanMask == null ? 0 : ibanMask!.hashCode) +
    (shipmentCount == null ? 0 : shipmentCount!.hashCode) +
    (periodFrom.hashCode) +
    (periodTo.hashCode);

  @override
  String toString() => 'PaymentPayoutCompletedData[payoutId=$payoutId, organizationId=$organizationId, customerId=$customerId, amount=$amount, ibanMask=$ibanMask, shipmentCount=$shipmentCount, periodFrom=$periodFrom, periodTo=$periodTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'payoutId'] = this.payoutId;
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    if (this.customerId != null) {
      json[r'customerId'] = this.customerId;
    } else {
      json[r'customerId'] = null;
    }
      json[r'amount'] = this.amount;
    if (this.ibanMask != null) {
      json[r'ibanMask'] = this.ibanMask;
    } else {
      json[r'ibanMask'] = null;
    }
    if (this.shipmentCount != null) {
      json[r'shipmentCount'] = this.shipmentCount;
    } else {
      json[r'shipmentCount'] = null;
    }
      json[r'periodFrom'] = _dateFormatter.format(this.periodFrom.toUtc());
      json[r'periodTo'] = _dateFormatter.format(this.periodTo.toUtc());
    return json;
  }

  /// Returns a new [PaymentPayoutCompletedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentPayoutCompletedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentPayoutCompletedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentPayoutCompletedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentPayoutCompletedData(
        payoutId: mapValueOfType<String>(json, r'payoutId')!,
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        customerId: mapValueOfType<String>(json, r'customerId'),
        amount: Money.fromJson(json[r'amount'])!,
        ibanMask: mapValueOfType<String>(json, r'ibanMask'),
        shipmentCount: mapValueOfType<int>(json, r'shipmentCount'),
        periodFrom: mapDateTime(json, r'periodFrom', r'')!,
        periodTo: mapDateTime(json, r'periodTo', r'')!,
      );
    }
    return null;
  }

  static List<PaymentPayoutCompletedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentPayoutCompletedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentPayoutCompletedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentPayoutCompletedData> mapFromJson(dynamic json) {
    final map = <String, PaymentPayoutCompletedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentPayoutCompletedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentPayoutCompletedData-objects as value to a dart map
  static Map<String, List<PaymentPayoutCompletedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentPayoutCompletedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentPayoutCompletedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'payoutId',
    'amount',
    'periodFrom',
    'periodTo',
  };
}

