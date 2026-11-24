//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ProviderPaymentEvent {
  /// Returns a new [ProviderPaymentEvent] instance.
  ProviderPaymentEvent({
    required this.eventId,
    required this.type,
    required this.paymentId,
    this.refundId,
    required this.providerReference,
    required this.amount,
    this.cardMask,
    this.failureCode,
    this.failureReason,
    required this.occurredAt,
  });

  /// Ідентифікатор події провайдера — ключ ідемпотентності
  String eventId;

  ProviderPaymentEventType type;

  /// Платіж payment-service, переданий провайдеру під час створення
  String paymentId;

  /// Повернення коштів — для REFUND_*
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundId;

  /// Ідентифікатор операції в провайдера
  String providerReference;

  Money amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cardMask;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProviderFailureCode? failureCode;

  /// Людський опис відмови — для *_FAILED
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureReason;

  DateTime occurredAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderPaymentEvent &&
    other.eventId == eventId &&
    other.type == type &&
    other.paymentId == paymentId &&
    other.refundId == refundId &&
    other.providerReference == providerReference &&
    other.amount == amount &&
    other.cardMask == cardMask &&
    other.failureCode == failureCode &&
    other.failureReason == failureReason &&
    other.occurredAt == occurredAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventId.hashCode) +
    (type.hashCode) +
    (paymentId.hashCode) +
    (refundId == null ? 0 : refundId!.hashCode) +
    (providerReference.hashCode) +
    (amount.hashCode) +
    (cardMask == null ? 0 : cardMask!.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (failureReason == null ? 0 : failureReason!.hashCode) +
    (occurredAt.hashCode);

  @override
  String toString() => 'ProviderPaymentEvent[eventId=$eventId, type=$type, paymentId=$paymentId, refundId=$refundId, providerReference=$providerReference, amount=$amount, cardMask=$cardMask, failureCode=$failureCode, failureReason=$failureReason, occurredAt=$occurredAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventId'] = this.eventId;
      json[r'type'] = this.type;
      json[r'paymentId'] = this.paymentId;
    if (this.refundId != null) {
      json[r'refundId'] = this.refundId;
    } else {
      json[r'refundId'] = null;
    }
      json[r'providerReference'] = this.providerReference;
      json[r'amount'] = this.amount;
    if (this.cardMask != null) {
      json[r'cardMask'] = this.cardMask;
    } else {
      json[r'cardMask'] = null;
    }
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.failureReason != null) {
      json[r'failureReason'] = this.failureReason;
    } else {
      json[r'failureReason'] = null;
    }
      json[r'occurredAt'] = this.occurredAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ProviderPaymentEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderPaymentEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderPaymentEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderPaymentEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderPaymentEvent(
        eventId: mapValueOfType<String>(json, r'eventId')!,
        type: ProviderPaymentEventType.fromJson(json[r'type'])!,
        paymentId: mapValueOfType<String>(json, r'paymentId')!,
        refundId: mapValueOfType<String>(json, r'refundId'),
        providerReference: mapValueOfType<String>(json, r'providerReference')!,
        amount: Money.fromJson(json[r'amount'])!,
        cardMask: mapValueOfType<String>(json, r'cardMask'),
        failureCode: ProviderFailureCode.fromJson(json[r'failureCode']),
        failureReason: mapValueOfType<String>(json, r'failureReason'),
        occurredAt: mapDateTime(json, r'occurredAt', r'')!,
      );
    }
    return null;
  }

  static List<ProviderPaymentEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderPaymentEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderPaymentEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderPaymentEvent> mapFromJson(dynamic json) {
    final map = <String, ProviderPaymentEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderPaymentEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderPaymentEvent-objects as value to a dart map
  static Map<String, List<ProviderPaymentEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderPaymentEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderPaymentEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventId',
    'type',
    'paymentId',
    'providerReference',
    'amount',
    'occurredAt',
  };
}

