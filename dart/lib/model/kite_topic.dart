//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Топіки Kafka (9.7)
class KiteTopic {
  /// Instantiate a new enum with the provided [value].
  const KiteTopic._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aiPeriodEvents = KiteTopic._(r'ai.events');
  static const auditPeriodEvents = KiteTopic._(r'audit.events');
  static const carePeriodEvents = KiteTopic._(r'care.events');
  static const customerPeriodEvents = KiteTopic._(r'customer.events');
  static const lockerPeriodEvents = KiteTopic._(r'locker.events');
  static const logisticsPeriodEvents = KiteTopic._(r'logistics.events');
  static const paymentPeriodEvents = KiteTopic._(r'payment.events');
  static const scanPeriodEvents = KiteTopic._(r'scan.events');
  static const shipmentPeriodEvents = KiteTopic._(r'shipment.events');

  /// List of all possible values in this [enum][KiteTopic].
  static const values = <KiteTopic>[
    aiPeriodEvents,
    auditPeriodEvents,
    carePeriodEvents,
    customerPeriodEvents,
    lockerPeriodEvents,
    logisticsPeriodEvents,
    paymentPeriodEvents,
    scanPeriodEvents,
    shipmentPeriodEvents,
  ];

  static KiteTopic? fromJson(dynamic value) => KiteTopicTypeTransformer().decode(value);

  static List<KiteTopic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KiteTopic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KiteTopic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KiteTopic] to String,
/// and [decode] dynamic data back to [KiteTopic].
class KiteTopicTypeTransformer {
  factory KiteTopicTypeTransformer() => _instance ??= const KiteTopicTypeTransformer._();

  const KiteTopicTypeTransformer._();

  String encode(KiteTopic data) => data.value;

  /// Decodes a [dynamic value][data] to a KiteTopic.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KiteTopic? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ai.events': return KiteTopic.aiPeriodEvents;
        case r'audit.events': return KiteTopic.auditPeriodEvents;
        case r'care.events': return KiteTopic.carePeriodEvents;
        case r'customer.events': return KiteTopic.customerPeriodEvents;
        case r'locker.events': return KiteTopic.lockerPeriodEvents;
        case r'logistics.events': return KiteTopic.logisticsPeriodEvents;
        case r'payment.events': return KiteTopic.paymentPeriodEvents;
        case r'scan.events': return KiteTopic.scanPeriodEvents;
        case r'shipment.events': return KiteTopic.shipmentPeriodEvents;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [KiteTopicTypeTransformer] instance.
  static KiteTopicTypeTransformer? _instance;
}

