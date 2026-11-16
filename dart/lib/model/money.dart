//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Money {
  /// Returns a new [Money] instance.
  Money({
    required this.amountMinor,
    this.currency = const MoneyCurrencyEnum._('UAH'),
  });

  int amountMinor;

  MoneyCurrencyEnum currency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Money &&
    other.amountMinor == amountMinor &&
    other.currency == currency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountMinor.hashCode) +
    (currency.hashCode);

  @override
  String toString() => 'Money[amountMinor=$amountMinor, currency=$currency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'amountMinor'] = this.amountMinor;
      json[r'currency'] = this.currency;
    return json;
  }

  /// Returns a new [Money] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Money? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Money[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Money[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Money(
        amountMinor: mapValueOfType<int>(json, r'amountMinor')!,
        currency: MoneyCurrencyEnum.fromJson(json[r'currency'])!,
      );
    }
    return null;
  }

  static List<Money> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Money>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Money.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Money> mapFromJson(dynamic json) {
    final map = <String, Money>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Money.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Money-objects as value to a dart map
  static Map<String, List<Money>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Money>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Money.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amountMinor',
    'currency',
  };
}


class MoneyCurrencyEnum {
  /// Instantiate a new enum with the provided [value].
  const MoneyCurrencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UAH = MoneyCurrencyEnum._(r'UAH');

  /// List of all possible values in this [enum][MoneyCurrencyEnum].
  static const values = <MoneyCurrencyEnum>[
    UAH,
  ];

  static MoneyCurrencyEnum? fromJson(dynamic value) => MoneyCurrencyEnumTypeTransformer().decode(value);

  static List<MoneyCurrencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MoneyCurrencyEnum] to String,
/// and [decode] dynamic data back to [MoneyCurrencyEnum].
class MoneyCurrencyEnumTypeTransformer {
  factory MoneyCurrencyEnumTypeTransformer() => _instance ??= const MoneyCurrencyEnumTypeTransformer._();

  const MoneyCurrencyEnumTypeTransformer._();

  String encode(MoneyCurrencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MoneyCurrencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MoneyCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UAH': return MoneyCurrencyEnum.UAH;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MoneyCurrencyEnumTypeTransformer] instance.
  static MoneyCurrencyEnumTypeTransformer? _instance;
}


