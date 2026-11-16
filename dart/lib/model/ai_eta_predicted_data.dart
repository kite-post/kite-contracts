//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class AiEtaPredictedData {
  /// Returns a new [AiEtaPredictedData] instance.
  AiEtaPredictedData({
    required this.shipmentId,
    required this.from,
    required this.to,
    this.confidence,
    required this.modelVersion,
    this.previousTo,
  });

  String shipmentId;

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
  num? confidence;

  String modelVersion;

  /// Попередня межа прогнозу — щоб побачити зсув
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? previousTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiEtaPredictedData &&
    other.shipmentId == shipmentId &&
    other.from == from &&
    other.to == to &&
    other.confidence == confidence &&
    other.modelVersion == modelVersion &&
    other.previousTo == previousTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (from.hashCode) +
    (to.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (modelVersion.hashCode) +
    (previousTo == null ? 0 : previousTo!.hashCode);

  @override
  String toString() => 'AiEtaPredictedData[shipmentId=$shipmentId, from=$from, to=$to, confidence=$confidence, modelVersion=$modelVersion, previousTo=$previousTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'from'] = this.from.toUtc().toIso8601String();
      json[r'to'] = this.to.toUtc().toIso8601String();
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
      json[r'modelVersion'] = this.modelVersion;
    if (this.previousTo != null) {
      json[r'previousTo'] = this.previousTo!.toUtc().toIso8601String();
    } else {
      json[r'previousTo'] = null;
    }
    return json;
  }

  /// Returns a new [AiEtaPredictedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiEtaPredictedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiEtaPredictedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiEtaPredictedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiEtaPredictedData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        from: mapDateTime(json, r'from', r'')!,
        to: mapDateTime(json, r'to', r'')!,
        confidence: num.parse('${json[r'confidence']}'),
        modelVersion: mapValueOfType<String>(json, r'modelVersion')!,
        previousTo: mapDateTime(json, r'previousTo', r''),
      );
    }
    return null;
  }

  static List<AiEtaPredictedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiEtaPredictedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiEtaPredictedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiEtaPredictedData> mapFromJson(dynamic json) {
    final map = <String, AiEtaPredictedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiEtaPredictedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiEtaPredictedData-objects as value to a dart map
  static Map<String, List<AiEtaPredictedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiEtaPredictedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiEtaPredictedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'from',
    'to',
    'modelVersion',
  };
}

