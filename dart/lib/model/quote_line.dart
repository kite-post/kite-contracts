//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class QuoteLine {
  /// Returns a new [QuoteLine] instance.
  QuoteLine({
    required this.code,
    required this.title,
    required this.amount,
  });

  String code;

  String title;

  Money amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuoteLine &&
    other.code == code &&
    other.title == title &&
    other.amount == amount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (title.hashCode) +
    (amount.hashCode);

  @override
  String toString() => 'QuoteLine[code=$code, title=$title, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'title'] = this.title;
      json[r'amount'] = this.amount;
    return json;
  }

  /// Returns a new [QuoteLine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuoteLine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuoteLine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuoteLine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuoteLine(
        code: mapValueOfType<String>(json, r'code')!,
        title: mapValueOfType<String>(json, r'title')!,
        amount: Money.fromJson(json[r'amount'])!,
      );
    }
    return null;
  }

  static List<QuoteLine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuoteLine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuoteLine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuoteLine> mapFromJson(dynamic json) {
    final map = <String, QuoteLine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuoteLine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuoteLine-objects as value to a dart map
  static Map<String, List<QuoteLine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuoteLine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuoteLine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'title',
    'amount',
  };
}

