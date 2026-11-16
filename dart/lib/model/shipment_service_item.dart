//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentServiceItem {
  /// Returns a new [ShipmentServiceItem] instance.
  ShipmentServiceItem({
    required this.code,
    this.params = const {},
    this.price,
  });

  ServiceCode code;

  Map<String, Object> params;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentServiceItem &&
    other.code == code &&
    _deepEquality.equals(other.params, params) &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (params.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'ShipmentServiceItem[code=$code, params=$params, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'params'] = this.params;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentServiceItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentServiceItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentServiceItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentServiceItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentServiceItem(
        code: ServiceCode.fromJson(json[r'code'])!,
        params: mapCastOfType<String, Object>(json, r'params') ?? const {},
        price: Money.fromJson(json[r'price']),
      );
    }
    return null;
  }

  static List<ShipmentServiceItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentServiceItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentServiceItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentServiceItem> mapFromJson(dynamic json) {
    final map = <String, ShipmentServiceItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentServiceItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentServiceItem-objects as value to a dart map
  static Map<String, List<ShipmentServiceItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentServiceItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentServiceItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
  };
}

