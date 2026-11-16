//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ScanItem {
  /// Returns a new [ScanItem] instance.
  ScanItem({
    required this.scanId,
    required this.barcode,
    required this.operation,
    required this.scannedAt,
    this.locationId,
    this.unitCode,
    this.tripId,
    this.weightGrams,
    this.dimensions,
  });

  /// UUID, згенерований на телефоні — ключ ідемпотентності (10.2, п. 5)
  String scanId;

  /// Штрих-код місця, мішка, рейсу або комірки
  String barcode;

  ScanOperation operation;

  /// Час на пристрої; `occurred_at` журналу (8.3, п. 4)
  DateTime scannedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationId;

  /// Мішок або контейнер, у який кладемо
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unitCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tripId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weightGrams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Dimensions? dimensions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanItem &&
    other.scanId == scanId &&
    other.barcode == barcode &&
    other.operation == operation &&
    other.scannedAt == scannedAt &&
    other.locationId == locationId &&
    other.unitCode == unitCode &&
    other.tripId == tripId &&
    other.weightGrams == weightGrams &&
    other.dimensions == dimensions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scanId.hashCode) +
    (barcode.hashCode) +
    (operation.hashCode) +
    (scannedAt.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (unitCode == null ? 0 : unitCode!.hashCode) +
    (tripId == null ? 0 : tripId!.hashCode) +
    (weightGrams == null ? 0 : weightGrams!.hashCode) +
    (dimensions == null ? 0 : dimensions!.hashCode);

  @override
  String toString() => 'ScanItem[scanId=$scanId, barcode=$barcode, operation=$operation, scannedAt=$scannedAt, locationId=$locationId, unitCode=$unitCode, tripId=$tripId, weightGrams=$weightGrams, dimensions=$dimensions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scanId'] = this.scanId;
      json[r'barcode'] = this.barcode;
      json[r'operation'] = this.operation;
      json[r'scannedAt'] = this.scannedAt.toUtc().toIso8601String();
    if (this.locationId != null) {
      json[r'locationId'] = this.locationId;
    } else {
      json[r'locationId'] = null;
    }
    if (this.unitCode != null) {
      json[r'unitCode'] = this.unitCode;
    } else {
      json[r'unitCode'] = null;
    }
    if (this.tripId != null) {
      json[r'tripId'] = this.tripId;
    } else {
      json[r'tripId'] = null;
    }
    if (this.weightGrams != null) {
      json[r'weightGrams'] = this.weightGrams;
    } else {
      json[r'weightGrams'] = null;
    }
    if (this.dimensions != null) {
      json[r'dimensions'] = this.dimensions;
    } else {
      json[r'dimensions'] = null;
    }
    return json;
  }

  /// Returns a new [ScanItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanItem(
        scanId: mapValueOfType<String>(json, r'scanId')!,
        barcode: mapValueOfType<String>(json, r'barcode')!,
        operation: ScanOperation.fromJson(json[r'operation'])!,
        scannedAt: mapDateTime(json, r'scannedAt', r'')!,
        locationId: mapValueOfType<String>(json, r'locationId'),
        unitCode: mapValueOfType<String>(json, r'unitCode'),
        tripId: mapValueOfType<String>(json, r'tripId'),
        weightGrams: mapValueOfType<int>(json, r'weightGrams'),
        dimensions: Dimensions.fromJson(json[r'dimensions']),
      );
    }
    return null;
  }

  static List<ScanItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanItem> mapFromJson(dynamic json) {
    final map = <String, ScanItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanItem-objects as value to a dart map
  static Map<String, List<ScanItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scanId',
    'barcode',
    'operation',
    'scannedAt',
  };
}

