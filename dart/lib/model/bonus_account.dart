//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class BonusAccount {
  /// Returns a new [BonusAccount] instance.
  BonusAccount({
    required this.balance,
    this.expiringSoon,
    this.transactions = const [],
    this.nextCursor,
  });

  Money balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? expiringSoon;

  List<BonusTransaction> transactions;

  String? nextCursor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BonusAccount &&
    other.balance == balance &&
    other.expiringSoon == expiringSoon &&
    _deepEquality.equals(other.transactions, transactions) &&
    other.nextCursor == nextCursor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balance.hashCode) +
    (expiringSoon == null ? 0 : expiringSoon!.hashCode) +
    (transactions.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode);

  @override
  String toString() => 'BonusAccount[balance=$balance, expiringSoon=$expiringSoon, transactions=$transactions, nextCursor=$nextCursor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'balance'] = this.balance;
    if (this.expiringSoon != null) {
      json[r'expiringSoon'] = this.expiringSoon;
    } else {
      json[r'expiringSoon'] = null;
    }
      json[r'transactions'] = this.transactions;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
    return json;
  }

  /// Returns a new [BonusAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BonusAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BonusAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BonusAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BonusAccount(
        balance: Money.fromJson(json[r'balance'])!,
        expiringSoon: Money.fromJson(json[r'expiringSoon']),
        transactions: BonusTransaction.listFromJson(json[r'transactions']),
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
      );
    }
    return null;
  }

  static List<BonusAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BonusAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BonusAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BonusAccount> mapFromJson(dynamic json) {
    final map = <String, BonusAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BonusAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BonusAccount-objects as value to a dart map
  static Map<String, List<BonusAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BonusAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BonusAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'balance',
  };
}

