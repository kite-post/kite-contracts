//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

/// Стани з 7.1
class ShipmentStatus {
  /// Instantiate a new enum with the provided [value].
  const ShipmentStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DRAFT = ShipmentStatus._(r'DRAFT');
  static const CREATED = ShipmentStatus._(r'CREATED');
  static const CANCELLED = ShipmentStatus._(r'CANCELLED');
  static const ACCEPTED = ShipmentStatus._(r'ACCEPTED');
  static const IN_TRANSIT = ShipmentStatus._(r'IN_TRANSIT');
  static const AT_HUB = ShipmentStatus._(r'AT_HUB');
  static const SORTED = ShipmentStatus._(r'SORTED');
  static const ON_HOLD = ShipmentStatus._(r'ON_HOLD');
  static const READY_FOR_PICKUP = ShipmentStatus._(r'READY_FOR_PICKUP');
  static const DELIVERED = ShipmentStatus._(r'DELIVERED');
  static const RETURNED = ShipmentStatus._(r'RETURNED');
  static const LOST = ShipmentStatus._(r'LOST');

  /// List of all possible values in this [enum][ShipmentStatus].
  static const values = <ShipmentStatus>[
    DRAFT,
    CREATED,
    CANCELLED,
    ACCEPTED,
    IN_TRANSIT,
    AT_HUB,
    SORTED,
    ON_HOLD,
    READY_FOR_PICKUP,
    DELIVERED,
    RETURNED,
    LOST,
  ];

  static ShipmentStatus? fromJson(dynamic value) => ShipmentStatusTypeTransformer().decode(value);

  static List<ShipmentStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentStatus] to String,
/// and [decode] dynamic data back to [ShipmentStatus].
class ShipmentStatusTypeTransformer {
  factory ShipmentStatusTypeTransformer() => _instance ??= const ShipmentStatusTypeTransformer._();

  const ShipmentStatusTypeTransformer._();

  String encode(ShipmentStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DRAFT': return ShipmentStatus.DRAFT;
        case r'CREATED': return ShipmentStatus.CREATED;
        case r'CANCELLED': return ShipmentStatus.CANCELLED;
        case r'ACCEPTED': return ShipmentStatus.ACCEPTED;
        case r'IN_TRANSIT': return ShipmentStatus.IN_TRANSIT;
        case r'AT_HUB': return ShipmentStatus.AT_HUB;
        case r'SORTED': return ShipmentStatus.SORTED;
        case r'ON_HOLD': return ShipmentStatus.ON_HOLD;
        case r'READY_FOR_PICKUP': return ShipmentStatus.READY_FOR_PICKUP;
        case r'DELIVERED': return ShipmentStatus.DELIVERED;
        case r'RETURNED': return ShipmentStatus.RETURNED;
        case r'LOST': return ShipmentStatus.LOST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentStatusTypeTransformer] instance.
  static ShipmentStatusTypeTransformer? _instance;
}

