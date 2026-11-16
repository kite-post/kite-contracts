//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PaymentFailedData {
  /// Returns a new [PaymentFailedData] instance.
  PaymentFailedData({
    required this.paymentId,
    required this.subject,
    required this.subjectId,
    this.shipmentId,
    required this.amount,
    this.method,
    required this.failureCode,
    this.failureMessage,
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
  PaymentMethod? method;

  PaymentFailedDataFailureCodeEnum failureCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentFailedData &&
    other.paymentId == paymentId &&
    other.subject == subject &&
    other.subjectId == subjectId &&
    other.shipmentId == shipmentId &&
    other.amount == amount &&
    other.method == method &&
    other.failureCode == failureCode &&
    other.failureMessage == failureMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (paymentId.hashCode) +
    (subject.hashCode) +
    (subjectId.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (amount.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (failureCode.hashCode) +
    (failureMessage == null ? 0 : failureMessage!.hashCode);

  @override
  String toString() => 'PaymentFailedData[paymentId=$paymentId, subject=$subject, subjectId=$subjectId, shipmentId=$shipmentId, amount=$amount, method=$method, failureCode=$failureCode, failureMessage=$failureMessage]';

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
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
      json[r'failureCode'] = this.failureCode;
    if (this.failureMessage != null) {
      json[r'failureMessage'] = this.failureMessage;
    } else {
      json[r'failureMessage'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentFailedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentFailedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentFailedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentFailedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentFailedData(
        paymentId: mapValueOfType<String>(json, r'paymentId')!,
        subject: PaymentSubject.fromJson(json[r'subject'])!,
        subjectId: mapValueOfType<String>(json, r'subjectId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        amount: Money.fromJson(json[r'amount'])!,
        method: PaymentMethod.fromJson(json[r'method']),
        failureCode: PaymentFailedDataFailureCodeEnum.fromJson(json[r'failureCode'])!,
        failureMessage: mapValueOfType<String>(json, r'failureMessage'),
      );
    }
    return null;
  }

  static List<PaymentFailedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentFailedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentFailedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentFailedData> mapFromJson(dynamic json) {
    final map = <String, PaymentFailedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentFailedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentFailedData-objects as value to a dart map
  static Map<String, List<PaymentFailedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentFailedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentFailedData.listFromJson(entry.value, growable: growable,);
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
    'failureCode',
  };
}


class PaymentFailedDataFailureCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PaymentFailedDataFailureCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DECLINED = PaymentFailedDataFailureCodeEnum._(r'DECLINED');
  static const INSUFFICIENT_FUNDS = PaymentFailedDataFailureCodeEnum._(r'INSUFFICIENT_FUNDS');
  static const THREE_DS_FAILED = PaymentFailedDataFailureCodeEnum._(r'THREE_DS_FAILED');
  static const TIMEOUT = PaymentFailedDataFailureCodeEnum._(r'TIMEOUT');
  static const PROVIDER_ERROR = PaymentFailedDataFailureCodeEnum._(r'PROVIDER_ERROR');

  /// List of all possible values in this [enum][PaymentFailedDataFailureCodeEnum].
  static const values = <PaymentFailedDataFailureCodeEnum>[
    DECLINED,
    INSUFFICIENT_FUNDS,
    THREE_DS_FAILED,
    TIMEOUT,
    PROVIDER_ERROR,
  ];

  static PaymentFailedDataFailureCodeEnum? fromJson(dynamic value) => PaymentFailedDataFailureCodeEnumTypeTransformer().decode(value);

  static List<PaymentFailedDataFailureCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentFailedDataFailureCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentFailedDataFailureCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentFailedDataFailureCodeEnum] to String,
/// and [decode] dynamic data back to [PaymentFailedDataFailureCodeEnum].
class PaymentFailedDataFailureCodeEnumTypeTransformer {
  factory PaymentFailedDataFailureCodeEnumTypeTransformer() => _instance ??= const PaymentFailedDataFailureCodeEnumTypeTransformer._();

  const PaymentFailedDataFailureCodeEnumTypeTransformer._();

  String encode(PaymentFailedDataFailureCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PaymentFailedDataFailureCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentFailedDataFailureCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DECLINED': return PaymentFailedDataFailureCodeEnum.DECLINED;
        case r'INSUFFICIENT_FUNDS': return PaymentFailedDataFailureCodeEnum.INSUFFICIENT_FUNDS;
        case r'THREE_DS_FAILED': return PaymentFailedDataFailureCodeEnum.THREE_DS_FAILED;
        case r'TIMEOUT': return PaymentFailedDataFailureCodeEnum.TIMEOUT;
        case r'PROVIDER_ERROR': return PaymentFailedDataFailureCodeEnum.PROVIDER_ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaymentFailedDataFailureCodeEnumTypeTransformer] instance.
  static PaymentFailedDataFailureCodeEnumTypeTransformer? _instance;
}


