//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class BonusTransaction {
  /// Returns a new [BonusTransaction] instance.
  BonusTransaction({
    required this.id,
    required this.amountMinor,
    required this.kind,
    this.shipmentId,
    required this.createdAt,
  });

  String id;

  /// Додатне — нарахування, відʼємне — списання
  int amountMinor;

  BonusTransactionKindEnum kind;

  String? shipmentId;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BonusTransaction &&
    other.id == id &&
    other.amountMinor == amountMinor &&
    other.kind == kind &&
    other.shipmentId == shipmentId &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (amountMinor.hashCode) +
    (kind.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'BonusTransaction[id=$id, amountMinor=$amountMinor, kind=$kind, shipmentId=$shipmentId, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'amountMinor'] = this.amountMinor;
      json[r'kind'] = this.kind;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BonusTransaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BonusTransaction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BonusTransaction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BonusTransaction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BonusTransaction(
        id: mapValueOfType<String>(json, r'id')!,
        amountMinor: mapValueOfType<int>(json, r'amountMinor')!,
        kind: BonusTransactionKindEnum.fromJson(json[r'kind'])!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
      );
    }
    return null;
  }

  static List<BonusTransaction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BonusTransaction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BonusTransaction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BonusTransaction> mapFromJson(dynamic json) {
    final map = <String, BonusTransaction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BonusTransaction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BonusTransaction-objects as value to a dart map
  static Map<String, List<BonusTransaction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BonusTransaction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BonusTransaction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'amountMinor',
    'kind',
    'createdAt',
  };
}


class BonusTransactionKindEnum {
  /// Instantiate a new enum with the provided [value].
  const BonusTransactionKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EARNED = BonusTransactionKindEnum._(r'EARNED');
  static const SPENT = BonusTransactionKindEnum._(r'SPENT');
  static const EXPIRED = BonusTransactionKindEnum._(r'EXPIRED');

  /// List of all possible values in this [enum][BonusTransactionKindEnum].
  static const values = <BonusTransactionKindEnum>[
    EARNED,
    SPENT,
    EXPIRED,
  ];

  static BonusTransactionKindEnum? fromJson(dynamic value) => BonusTransactionKindEnumTypeTransformer().decode(value);

  static List<BonusTransactionKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BonusTransactionKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BonusTransactionKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BonusTransactionKindEnum] to String,
/// and [decode] dynamic data back to [BonusTransactionKindEnum].
class BonusTransactionKindEnumTypeTransformer {
  factory BonusTransactionKindEnumTypeTransformer() => _instance ??= const BonusTransactionKindEnumTypeTransformer._();

  const BonusTransactionKindEnumTypeTransformer._();

  String encode(BonusTransactionKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BonusTransactionKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BonusTransactionKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EARNED': return BonusTransactionKindEnum.EARNED;
        case r'SPENT': return BonusTransactionKindEnum.SPENT;
        case r'EXPIRED': return BonusTransactionKindEnum.EXPIRED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BonusTransactionKindEnumTypeTransformer] instance.
  static BonusTransactionKindEnumTypeTransformer? _instance;
}


