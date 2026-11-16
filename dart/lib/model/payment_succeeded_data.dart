//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PaymentSucceededData {
  /// Returns a new [PaymentSucceededData] instance.
  PaymentSucceededData({
    required this.paymentId,
    required this.subject,
    required this.subjectId,
    this.shipmentId,
    required this.amount,
    this.bonusApplied,
    required this.method,
    this.payerCustomerId,
    this.organizationId,
    this.providerReference,
  });

  String paymentId;

  PaymentSubject subject;

  String subjectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  Money amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? bonusApplied;

  PaymentMethod method;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payerCustomerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  /// Ідентифікатор транзакції в mock-pay
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentSucceededData &&
    other.paymentId == paymentId &&
    other.subject == subject &&
    other.subjectId == subjectId &&
    other.shipmentId == shipmentId &&
    other.amount == amount &&
    other.bonusApplied == bonusApplied &&
    other.method == method &&
    other.payerCustomerId == payerCustomerId &&
    other.organizationId == organizationId &&
    other.providerReference == providerReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (paymentId.hashCode) +
    (subject.hashCode) +
    (subjectId.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (amount.hashCode) +
    (bonusApplied == null ? 0 : bonusApplied!.hashCode) +
    (method.hashCode) +
    (payerCustomerId == null ? 0 : payerCustomerId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (providerReference == null ? 0 : providerReference!.hashCode);

  @override
  String toString() => 'PaymentSucceededData[paymentId=$paymentId, subject=$subject, subjectId=$subjectId, shipmentId=$shipmentId, amount=$amount, bonusApplied=$bonusApplied, method=$method, payerCustomerId=$payerCustomerId, organizationId=$organizationId, providerReference=$providerReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'paymentId'] = this.paymentId;
      json[r'subject'] = this.subject;
      json[r'subjectId'] = this.subjectId;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
      json[r'amount'] = this.amount;
    if (this.bonusApplied != null) {
      json[r'bonusApplied'] = this.bonusApplied;
    } else {
      json[r'bonusApplied'] = null;
    }
      json[r'method'] = this.method;
    if (this.payerCustomerId != null) {
      json[r'payerCustomerId'] = this.payerCustomerId;
    } else {
      json[r'payerCustomerId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    if (this.providerReference != null) {
      json[r'providerReference'] = this.providerReference;
    } else {
      json[r'providerReference'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentSucceededData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentSucceededData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentSucceededData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentSucceededData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentSucceededData(
        paymentId: mapValueOfType<String>(json, r'paymentId')!,
        subject: PaymentSubject.fromJson(json[r'subject'])!,
        subjectId: mapValueOfType<String>(json, r'subjectId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        amount: Money.fromJson(json[r'amount'])!,
        bonusApplied: Money.fromJson(json[r'bonusApplied']),
        method: PaymentMethod.fromJson(json[r'method'])!,
        payerCustomerId: mapValueOfType<String>(json, r'payerCustomerId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        providerReference: mapValueOfType<String>(json, r'providerReference'),
      );
    }
    return null;
  }

  static List<PaymentSucceededData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentSucceededData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentSucceededData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentSucceededData> mapFromJson(dynamic json) {
    final map = <String, PaymentSucceededData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentSucceededData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentSucceededData-objects as value to a dart map
  static Map<String, List<PaymentSucceededData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentSucceededData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentSucceededData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'paymentId',
    'subject',
    'subjectId',
    'amount',
    'method',
  };
}

