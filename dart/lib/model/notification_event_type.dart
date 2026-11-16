//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class NotificationEventType {
  /// Instantiate a new enum with the provided [value].
  const NotificationEventType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SHIPMENT_CREATED = NotificationEventType._(r'SHIPMENT_CREATED');
  static const SHIPMENT_ACCEPTED = NotificationEventType._(r'SHIPMENT_ACCEPTED');
  static const SHIPMENT_IN_TRANSIT = NotificationEventType._(r'SHIPMENT_IN_TRANSIT');
  static const READY_FOR_PICKUP = NotificationEventType._(r'READY_FOR_PICKUP');
  static const STORAGE_EXPIRING = NotificationEventType._(r'STORAGE_EXPIRING');
  static const DELIVERED = NotificationEventType._(r'DELIVERED');
  static const PAYMENT = NotificationEventType._(r'PAYMENT');
  static const CLAIM = NotificationEventType._(r'CLAIM');
  static const MARKETING = NotificationEventType._(r'MARKETING');

  /// List of all possible values in this [enum][NotificationEventType].
  static const values = <NotificationEventType>[
    SHIPMENT_CREATED,
    SHIPMENT_ACCEPTED,
    SHIPMENT_IN_TRANSIT,
    READY_FOR_PICKUP,
    STORAGE_EXPIRING,
    DELIVERED,
    PAYMENT,
    CLAIM,
    MARKETING,
  ];

  static NotificationEventType? fromJson(dynamic value) => NotificationEventTypeTypeTransformer().decode(value);

  static List<NotificationEventType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationEventType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationEventType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationEventType] to String,
/// and [decode] dynamic data back to [NotificationEventType].
class NotificationEventTypeTypeTransformer {
  factory NotificationEventTypeTypeTransformer() => _instance ??= const NotificationEventTypeTypeTransformer._();

  const NotificationEventTypeTypeTransformer._();

  String encode(NotificationEventType data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationEventType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationEventType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SHIPMENT_CREATED': return NotificationEventType.SHIPMENT_CREATED;
        case r'SHIPMENT_ACCEPTED': return NotificationEventType.SHIPMENT_ACCEPTED;
        case r'SHIPMENT_IN_TRANSIT': return NotificationEventType.SHIPMENT_IN_TRANSIT;
        case r'READY_FOR_PICKUP': return NotificationEventType.READY_FOR_PICKUP;
        case r'STORAGE_EXPIRING': return NotificationEventType.STORAGE_EXPIRING;
        case r'DELIVERED': return NotificationEventType.DELIVERED;
        case r'PAYMENT': return NotificationEventType.PAYMENT;
        case r'CLAIM': return NotificationEventType.CLAIM;
        case r'MARKETING': return NotificationEventType.MARKETING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationEventTypeTypeTransformer] instance.
  static NotificationEventTypeTypeTransformer? _instance;
}

