//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class Parcel {
  /// Returns a new [Parcel] instance.
  Parcel({
    required this.id,
    required this.seq,
    required this.barcode,
    required this.declaredWeightGrams,
    this.declaredDimensions,
    this.actualWeightGrams,
    this.actualDimensions,
    this.status,
  });

  String id;

  /// Minimum value: 1
  /// Maximum value: 20
  int seq;

  /// Штрих-код місця — номер із суфіксом місця (10.1)
  String barcode;

  /// Minimum value: 1
  int declaredWeightGrams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Dimensions? declaredDimensions;

  int? actualWeightGrams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Dimensions? actualDimensions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShipmentStatus? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Parcel &&
    other.id == id &&
    other.seq == seq &&
    other.barcode == barcode &&
    other.declaredWeightGrams == declaredWeightGrams &&
    other.declaredDimensions == declaredDimensions &&
    other.actualWeightGrams == actualWeightGrams &&
    other.actualDimensions == actualDimensions &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (seq.hashCode) +
    (barcode.hashCode) +
    (declaredWeightGrams.hashCode) +
    (declaredDimensions == null ? 0 : declaredDimensions!.hashCode) +
    (actualWeightGrams == null ? 0 : actualWeightGrams!.hashCode) +
    (actualDimensions == null ? 0 : actualDimensions!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Parcel[id=$id, seq=$seq, barcode=$barcode, declaredWeightGrams=$declaredWeightGrams, declaredDimensions=$declaredDimensions, actualWeightGrams=$actualWeightGrams, actualDimensions=$actualDimensions, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'seq'] = this.seq;
      json[r'barcode'] = this.barcode;
      json[r'declaredWeightGrams'] = this.declaredWeightGrams;
    if (this.declaredDimensions != null) {
      json[r'declaredDimensions'] = this.declaredDimensions;
    } else {
      json[r'declaredDimensions'] = null;
    }
    if (this.actualWeightGrams != null) {
      json[r'actualWeightGrams'] = this.actualWeightGrams;
    } else {
      json[r'actualWeightGrams'] = null;
    }
    if (this.actualDimensions != null) {
      json[r'actualDimensions'] = this.actualDimensions;
    } else {
      json[r'actualDimensions'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Parcel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Parcel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Parcel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Parcel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Parcel(
        id: mapValueOfType<String>(json, r'id')!,
        seq: mapValueOfType<int>(json, r'seq')!,
        barcode: mapValueOfType<String>(json, r'barcode')!,
        declaredWeightGrams: mapValueOfType<int>(json, r'declaredWeightGrams')!,
        declaredDimensions: Dimensions.fromJson(json[r'declaredDimensions']),
        actualWeightGrams: mapValueOfType<int>(json, r'actualWeightGrams'),
        actualDimensions: Dimensions.fromJson(json[r'actualDimensions']),
        status: ShipmentStatus.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<Parcel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Parcel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Parcel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Parcel> mapFromJson(dynamic json) {
    final map = <String, Parcel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Parcel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Parcel-objects as value to a dart map
  static Map<String, List<Parcel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Parcel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Parcel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'seq',
    'barcode',
    'declaredWeightGrams',
  };
}

