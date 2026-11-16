//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ShipmentSummary {
  /// Returns a new [ShipmentSummary] instance.
  ShipmentSummary({
    required this.id,
    required this.trackingNumber,
    required this.status,
    this.statusText,
    required this.direction,
    this.counterpartName,
    this.destination,
    this.eta,
    this.priceTotal,
    this.codAmount,
    this.updatedAt,
  });

  String id;

  /// Номер відправлення у форматі UPU S10 (10.1)
  String trackingNumber;

  ShipmentStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusText;

  ShipmentDirection direction;

  /// Другий бік відправлення
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? counterpartName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocationRef? destination;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EtaPrediction? eta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? priceTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Money? codAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentSummary &&
    other.id == id &&
    other.trackingNumber == trackingNumber &&
    other.status == status &&
    other.statusText == statusText &&
    other.direction == direction &&
    other.counterpartName == counterpartName &&
    other.destination == destination &&
    other.eta == eta &&
    other.priceTotal == priceTotal &&
    other.codAmount == codAmount &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (trackingNumber.hashCode) +
    (status.hashCode) +
    (statusText == null ? 0 : statusText!.hashCode) +
    (direction.hashCode) +
    (counterpartName == null ? 0 : counterpartName!.hashCode) +
    (destination == null ? 0 : destination!.hashCode) +
    (eta == null ? 0 : eta!.hashCode) +
    (priceTotal == null ? 0 : priceTotal!.hashCode) +
    (codAmount == null ? 0 : codAmount!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ShipmentSummary[id=$id, trackingNumber=$trackingNumber, status=$status, statusText=$statusText, direction=$direction, counterpartName=$counterpartName, destination=$destination, eta=$eta, priceTotal=$priceTotal, codAmount=$codAmount, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'trackingNumber'] = this.trackingNumber;
      json[r'status'] = this.status;
    if (this.statusText != null) {
      json[r'statusText'] = this.statusText;
    } else {
      json[r'statusText'] = null;
    }
      json[r'direction'] = this.direction;
    if (this.counterpartName != null) {
      json[r'counterpartName'] = this.counterpartName;
    } else {
      json[r'counterpartName'] = null;
    }
    if (this.destination != null) {
      json[r'destination'] = this.destination;
    } else {
      json[r'destination'] = null;
    }
    if (this.eta != null) {
      json[r'eta'] = this.eta;
    } else {
      json[r'eta'] = null;
    }
    if (this.priceTotal != null) {
      json[r'priceTotal'] = this.priceTotal;
    } else {
      json[r'priceTotal'] = null;
    }
    if (this.codAmount != null) {
      json[r'codAmount'] = this.codAmount;
    } else {
      json[r'codAmount'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [ShipmentSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentSummary(
        id: mapValueOfType<String>(json, r'id')!,
        trackingNumber: mapValueOfType<String>(json, r'trackingNumber')!,
        status: ShipmentStatus.fromJson(json[r'status'])!,
        statusText: mapValueOfType<String>(json, r'statusText'),
        direction: ShipmentDirection.fromJson(json[r'direction'])!,
        counterpartName: mapValueOfType<String>(json, r'counterpartName'),
        destination: LocationRef.fromJson(json[r'destination']),
        eta: EtaPrediction.fromJson(json[r'eta']),
        priceTotal: Money.fromJson(json[r'priceTotal']),
        codAmount: Money.fromJson(json[r'codAmount']),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<ShipmentSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentSummary> mapFromJson(dynamic json) {
    final map = <String, ShipmentSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentSummary-objects as value to a dart map
  static Map<String, List<ShipmentSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'trackingNumber',
    'status',
    'direction',
  };
}

