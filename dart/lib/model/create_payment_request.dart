//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class CreatePaymentRequest {
  /// Returns a new [CreatePaymentRequest] instance.
  CreatePaymentRequest({
    required this.subject,
    required this.subjectId,
    required this.method,
    this.bonusAmountMinor,
    this.promoCode,
    this.returnUrl,
  });

  PaymentSubject subject;

  String subjectId;

  PaymentMethod method;

  /// Скільки списати балами (до 50% суми)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bonusAmountMinor;

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
  String? returnUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePaymentRequest &&
    other.subject == subject &&
    other.subjectId == subjectId &&
    other.method == method &&
    other.bonusAmountMinor == bonusAmountMinor &&
    other.promoCode == promoCode &&
    other.returnUrl == returnUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject.hashCode) +
    (subjectId.hashCode) +
    (method.hashCode) +
    (bonusAmountMinor == null ? 0 : bonusAmountMinor!.hashCode) +
    (promoCode == null ? 0 : promoCode!.hashCode) +
    (returnUrl == null ? 0 : returnUrl!.hashCode);

  @override
  String toString() => 'CreatePaymentRequest[subject=$subject, subjectId=$subjectId, method=$method, bonusAmountMinor=$bonusAmountMinor, promoCode=$promoCode, returnUrl=$returnUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subject'] = this.subject;
      json[r'subjectId'] = this.subjectId;
      json[r'method'] = this.method;
    if (this.bonusAmountMinor != null) {
      json[r'bonusAmountMinor'] = this.bonusAmountMinor;
    } else {
      json[r'bonusAmountMinor'] = null;
    }
    if (this.promoCode != null) {
      json[r'promoCode'] = this.promoCode;
    } else {
      json[r'promoCode'] = null;
    }
    if (this.returnUrl != null) {
      json[r'returnUrl'] = this.returnUrl;
    } else {
      json[r'returnUrl'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePaymentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePaymentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePaymentRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePaymentRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePaymentRequest(
        subject: PaymentSubject.fromJson(json[r'subject'])!,
        subjectId: mapValueOfType<String>(json, r'subjectId')!,
        method: PaymentMethod.fromJson(json[r'method'])!,
        bonusAmountMinor: mapValueOfType<int>(json, r'bonusAmountMinor'),
        promoCode: mapValueOfType<String>(json, r'promoCode'),
        returnUrl: mapValueOfType<String>(json, r'returnUrl'),
      );
    }
    return null;
  }

  static List<CreatePaymentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePaymentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePaymentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePaymentRequest> mapFromJson(dynamic json) {
    final map = <String, CreatePaymentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePaymentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePaymentRequest-objects as value to a dart map
  static Map<String, List<CreatePaymentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePaymentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePaymentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    'subjectId',
    'method',
  };
}

