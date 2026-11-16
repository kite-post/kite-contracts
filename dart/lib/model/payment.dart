//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Payment {
  /// Returns a new [Payment] instance.
  Payment({
    required this.id,
    required this.subject,
    required this.subjectId,
    required this.amount,
    this.bonusApplied,
    this.method,
    required this.status,
    this.redirectUrl,
    this.providerReference,
    required this.createdAt,
  });

  String id;

  PaymentSubject subject;

  String subjectId;

  Money amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? bonusApplied;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PaymentMethod? method;

  PaymentStatus status;

  /// Сторінка mock-pay, поки платіж не завершено
  String? redirectUrl;

  String? providerReference;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Payment &&
    other.id == id &&
    other.subject == subject &&
    other.subjectId == subjectId &&
    other.amount == amount &&
    other.bonusApplied == bonusApplied &&
    other.method == method &&
    other.status == status &&
    other.redirectUrl == redirectUrl &&
    other.providerReference == providerReference &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (subject.hashCode) +
    (subjectId.hashCode) +
    (amount.hashCode) +
    (bonusApplied == null ? 0 : bonusApplied!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (status.hashCode) +
    (redirectUrl == null ? 0 : redirectUrl!.hashCode) +
    (providerReference == null ? 0 : providerReference!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Payment[id=$id, subject=$subject, subjectId=$subjectId, amount=$amount, bonusApplied=$bonusApplied, method=$method, status=$status, redirectUrl=$redirectUrl, providerReference=$providerReference, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'subject'] = this.subject;
      json[r'subjectId'] = this.subjectId;
      json[r'amount'] = this.amount;
    if (this.bonusApplied != null) {
      json[r'bonusApplied'] = this.bonusApplied;
    } else {
      json[r'bonusApplied'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
      json[r'status'] = this.status;
    if (this.redirectUrl != null) {
      json[r'redirectUrl'] = this.redirectUrl;
    } else {
      json[r'redirectUrl'] = null;
    }
    if (this.providerReference != null) {
      json[r'providerReference'] = this.providerReference;
    } else {
      json[r'providerReference'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Payment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Payment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Payment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Payment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Payment(
        id: mapValueOfType<String>(json, r'id')!,
        subject: PaymentSubject.fromJson(json[r'subject'])!,
        subjectId: mapValueOfType<String>(json, r'subjectId')!,
        amount: Money.fromJson(json[r'amount'])!,
        bonusApplied: Money.fromJson(json[r'bonusApplied']),
        method: PaymentMethod.fromJson(json[r'method']),
        status: PaymentStatus.fromJson(json[r'status'])!,
        redirectUrl: mapValueOfType<String>(json, r'redirectUrl'),
        providerReference: mapValueOfType<String>(json, r'providerReference'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
      );
    }
    return null;
  }

  static List<Payment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Payment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Payment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Payment> mapFromJson(dynamic json) {
    final map = <String, Payment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Payment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Payment-objects as value to a dart map
  static Map<String, List<Payment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Payment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Payment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'subject',
    'subjectId',
    'amount',
    'status',
    'createdAt',
  };
}

