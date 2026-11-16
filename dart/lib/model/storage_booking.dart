//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class StorageBooking {
  /// Returns a new [StorageBooking] instance.
  StorageBooking({
    required this.id,
    required this.locationId,
    this.cellCode,
    required this.size,
    required this.status,
    this.price,
    this.payment,
    required this.expiresAt,
  });

  String id;

  String locationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cellCode;

  CellSize size;

  StorageBookingStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Payment? payment;

  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageBooking &&
    other.id == id &&
    other.locationId == locationId &&
    other.cellCode == cellCode &&
    other.size == size &&
    other.status == status &&
    other.price == price &&
    other.payment == payment &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (locationId.hashCode) +
    (cellCode == null ? 0 : cellCode!.hashCode) +
    (size.hashCode) +
    (status.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (payment == null ? 0 : payment!.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'StorageBooking[id=$id, locationId=$locationId, cellCode=$cellCode, size=$size, status=$status, price=$price, payment=$payment, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'locationId'] = this.locationId;
    if (this.cellCode != null) {
      json[r'cellCode'] = this.cellCode;
    } else {
      json[r'cellCode'] = null;
    }
      json[r'size'] = this.size;
      json[r'status'] = this.status;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.payment != null) {
      json[r'payment'] = this.payment;
    } else {
      json[r'payment'] = null;
    }
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StorageBooking] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageBooking? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageBooking[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageBooking[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageBooking(
        id: mapValueOfType<String>(json, r'id')!,
        locationId: mapValueOfType<String>(json, r'locationId')!,
        cellCode: mapValueOfType<String>(json, r'cellCode'),
        size: CellSize.fromJson(json[r'size'])!,
        status: StorageBookingStatusEnum.fromJson(json[r'status'])!,
        price: Money.fromJson(json[r'price']),
        payment: Payment.fromJson(json[r'payment']),
        expiresAt: mapDateTime(json, r'expiresAt', r'')!,
      );
    }
    return null;
  }

  static List<StorageBooking> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageBooking>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageBooking.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageBooking> mapFromJson(dynamic json) {
    final map = <String, StorageBooking>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageBooking.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageBooking-objects as value to a dart map
  static Map<String, List<StorageBooking>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageBooking>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageBooking.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'locationId',
    'size',
    'status',
    'expiresAt',
  };
}


class StorageBookingStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StorageBookingStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AWAITING_PAYMENT = StorageBookingStatusEnum._(r'AWAITING_PAYMENT');
  static const ACTIVE = StorageBookingStatusEnum._(r'ACTIVE');
  static const EXPIRED = StorageBookingStatusEnum._(r'EXPIRED');
  static const CLOSED = StorageBookingStatusEnum._(r'CLOSED');

  /// List of all possible values in this [enum][StorageBookingStatusEnum].
  static const values = <StorageBookingStatusEnum>[
    AWAITING_PAYMENT,
    ACTIVE,
    EXPIRED,
    CLOSED,
  ];

  static StorageBookingStatusEnum? fromJson(dynamic value) => StorageBookingStatusEnumTypeTransformer().decode(value);

  static List<StorageBookingStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageBookingStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageBookingStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StorageBookingStatusEnum] to String,
/// and [decode] dynamic data back to [StorageBookingStatusEnum].
class StorageBookingStatusEnumTypeTransformer {
  factory StorageBookingStatusEnumTypeTransformer() => _instance ??= const StorageBookingStatusEnumTypeTransformer._();

  const StorageBookingStatusEnumTypeTransformer._();

  String encode(StorageBookingStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StorageBookingStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StorageBookingStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AWAITING_PAYMENT': return StorageBookingStatusEnum.AWAITING_PAYMENT;
        case r'ACTIVE': return StorageBookingStatusEnum.ACTIVE;
        case r'EXPIRED': return StorageBookingStatusEnum.EXPIRED;
        case r'CLOSED': return StorageBookingStatusEnum.CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StorageBookingStatusEnumTypeTransformer] instance.
  static StorageBookingStatusEnumTypeTransformer? _instance;
}


