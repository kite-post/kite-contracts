//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Quote {
  /// Returns a new [Quote] instance.
  Quote({
    required this.total,
    this.lines = const [],
    required this.zone,
    required this.chargeableWeightGrams,
    required this.expiresAt,
  });

  Money total;

  List<QuoteLine> lines;

  DeliveryZone zone;

  /// Більша з фактичної та об'ємної ваги (бізнес-модель)
  int chargeableWeightGrams;

  /// Розрахунок кешується на 15 хв (6.2, `quote`)
  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Quote &&
    other.total == total &&
    _deepEquality.equals(other.lines, lines) &&
    other.zone == zone &&
    other.chargeableWeightGrams == chargeableWeightGrams &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total.hashCode) +
    (lines.hashCode) +
    (zone.hashCode) +
    (chargeableWeightGrams.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'Quote[total=$total, lines=$lines, zone=$zone, chargeableWeightGrams=$chargeableWeightGrams, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = this.total;
      json[r'lines'] = this.lines;
      json[r'zone'] = this.zone;
      json[r'chargeableWeightGrams'] = this.chargeableWeightGrams;
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Quote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Quote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Quote[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Quote[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Quote(
        total: Money.fromJson(json[r'total'])!,
        lines: QuoteLine.listFromJson(json[r'lines']),
        zone: DeliveryZone.fromJson(json[r'zone'])!,
        chargeableWeightGrams: mapValueOfType<int>(json, r'chargeableWeightGrams')!,
        expiresAt: mapDateTime(json, r'expiresAt', r'')!,
      );
    }
    return null;
  }

  static List<Quote> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Quote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Quote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Quote> mapFromJson(dynamic json) {
    final map = <String, Quote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Quote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Quote-objects as value to a dart map
  static Map<String, List<Quote>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Quote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Quote.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'lines',
    'zone',
    'chargeableWeightGrams',
    'expiresAt',
  };
}

