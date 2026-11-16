//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PaymentRefundCompletedData {
  /// Returns a new [PaymentRefundCompletedData] instance.
  PaymentRefundCompletedData({
    required this.refundId,
    required this.paymentId,
    this.shipmentId,
    required this.amount,
    required this.reason,
    this.claimId,
  });

  String refundId;

  String paymentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  Money amount;

  PaymentRefundCompletedDataReasonEnum reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? claimId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentRefundCompletedData &&
    other.refundId == refundId &&
    other.paymentId == paymentId &&
    other.shipmentId == shipmentId &&
    other.amount == amount &&
    other.reason == reason &&
    other.claimId == claimId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (refundId.hashCode) +
    (paymentId.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (amount.hashCode) +
    (reason.hashCode) +
    (claimId == null ? 0 : claimId!.hashCode);

  @override
  String toString() => 'PaymentRefundCompletedData[refundId=$refundId, paymentId=$paymentId, shipmentId=$shipmentId, amount=$amount, reason=$reason, claimId=$claimId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'refundId'] = this.refundId;
      json[r'paymentId'] = this.paymentId;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
      json[r'amount'] = this.amount;
      json[r'reason'] = this.reason;
    if (this.claimId != null) {
      json[r'claimId'] = this.claimId;
    } else {
      json[r'claimId'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentRefundCompletedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentRefundCompletedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentRefundCompletedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentRefundCompletedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentRefundCompletedData(
        refundId: mapValueOfType<String>(json, r'refundId')!,
        paymentId: mapValueOfType<String>(json, r'paymentId')!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        amount: Money.fromJson(json[r'amount'])!,
        reason: PaymentRefundCompletedDataReasonEnum.fromJson(json[r'reason'])!,
        claimId: mapValueOfType<String>(json, r'claimId'),
      );
    }
    return null;
  }

  static List<PaymentRefundCompletedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentRefundCompletedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRefundCompletedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentRefundCompletedData> mapFromJson(dynamic json) {
    final map = <String, PaymentRefundCompletedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentRefundCompletedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentRefundCompletedData-objects as value to a dart map
  static Map<String, List<PaymentRefundCompletedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentRefundCompletedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentRefundCompletedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refundId',
    'paymentId',
    'amount',
    'reason',
  };
}


class PaymentRefundCompletedDataReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const PaymentRefundCompletedDataReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SHIPMENT_CANCELLED = PaymentRefundCompletedDataReasonEnum._(r'SHIPMENT_CANCELLED');
  static const CLAIM_COMPENSATION = PaymentRefundCompletedDataReasonEnum._(r'CLAIM_COMPENSATION');
  static const SERVICE_NOT_RENDERED = PaymentRefundCompletedDataReasonEnum._(r'SERVICE_NOT_RENDERED');
  static const MANUAL = PaymentRefundCompletedDataReasonEnum._(r'MANUAL');

  /// List of all possible values in this [enum][PaymentRefundCompletedDataReasonEnum].
  static const values = <PaymentRefundCompletedDataReasonEnum>[
    SHIPMENT_CANCELLED,
    CLAIM_COMPENSATION,
    SERVICE_NOT_RENDERED,
    MANUAL,
  ];

  static PaymentRefundCompletedDataReasonEnum? fromJson(dynamic value) => PaymentRefundCompletedDataReasonEnumTypeTransformer().decode(value);

  static List<PaymentRefundCompletedDataReasonEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentRefundCompletedDataReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentRefundCompletedDataReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentRefundCompletedDataReasonEnum] to String,
/// and [decode] dynamic data back to [PaymentRefundCompletedDataReasonEnum].
class PaymentRefundCompletedDataReasonEnumTypeTransformer {
  factory PaymentRefundCompletedDataReasonEnumTypeTransformer() => _instance ??= const PaymentRefundCompletedDataReasonEnumTypeTransformer._();

  const PaymentRefundCompletedDataReasonEnumTypeTransformer._();

  String encode(PaymentRefundCompletedDataReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PaymentRefundCompletedDataReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentRefundCompletedDataReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SHIPMENT_CANCELLED': return PaymentRefundCompletedDataReasonEnum.SHIPMENT_CANCELLED;
        case r'CLAIM_COMPENSATION': return PaymentRefundCompletedDataReasonEnum.CLAIM_COMPENSATION;
        case r'SERVICE_NOT_RENDERED': return PaymentRefundCompletedDataReasonEnum.SERVICE_NOT_RENDERED;
        case r'MANUAL': return PaymentRefundCompletedDataReasonEnum.MANUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaymentRefundCompletedDataReasonEnumTypeTransformer] instance.
  static PaymentRefundCompletedDataReasonEnumTypeTransformer? _instance;
}


