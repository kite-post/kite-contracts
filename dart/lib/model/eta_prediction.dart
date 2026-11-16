//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class EtaPrediction {
  /// Returns a new [EtaPrediction] instance.
  EtaPrediction({
    required this.from,
    required this.to,
    this.confidence,
    this.modelVersion,
  });

  DateTime from;

  DateTime to;

  /// Minimum value: 0
  /// Maximum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? confidence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modelVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EtaPrediction &&
    other.from == from &&
    other.to == to &&
    other.confidence == confidence &&
    other.modelVersion == modelVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from.hashCode) +
    (to.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (modelVersion == null ? 0 : modelVersion!.hashCode);

  @override
  String toString() => 'EtaPrediction[from=$from, to=$to, confidence=$confidence, modelVersion=$modelVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from'] = this.from.toUtc().toIso8601String();
      json[r'to'] = this.to.toUtc().toIso8601String();
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    if (this.modelVersion != null) {
      json[r'modelVersion'] = this.modelVersion;
    } else {
      json[r'modelVersion'] = null;
    }
    return json;
  }

  /// Returns a new [EtaPrediction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EtaPrediction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EtaPrediction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EtaPrediction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EtaPrediction(
        from: mapDateTime(json, r'from', r'')!,
        to: mapDateTime(json, r'to', r'')!,
        confidence: mapValueOfType<double>(json, r'confidence'),
        modelVersion: mapValueOfType<String>(json, r'modelVersion'),
      );
    }
    return null;
  }

  static List<EtaPrediction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EtaPrediction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EtaPrediction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EtaPrediction> mapFromJson(dynamic json) {
    final map = <String, EtaPrediction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EtaPrediction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EtaPrediction-objects as value to a dart map
  static Map<String, List<EtaPrediction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EtaPrediction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EtaPrediction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from',
    'to',
  };
}

