//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class AiRiskScoredData {
  /// Returns a new [AiRiskScoredData] instance.
  AiRiskScoredData({
    required this.shipmentId,
    required this.riskScore,
    this.reasons = const [],
    required this.modelVersion,
  });

  String shipmentId;

  /// Minimum value: 0
  /// Maximum value: 1
  num riskScore;

  /// Людські причини оцінки: історія відмов, довгий строк зберігання тощо
  List<String> reasons;

  String modelVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiRiskScoredData &&
    other.shipmentId == shipmentId &&
    other.riskScore == riskScore &&
    _deepEquality.equals(other.reasons, reasons) &&
    other.modelVersion == modelVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId.hashCode) +
    (riskScore.hashCode) +
    (reasons.hashCode) +
    (modelVersion.hashCode);

  @override
  String toString() => 'AiRiskScoredData[shipmentId=$shipmentId, riskScore=$riskScore, reasons=$reasons, modelVersion=$modelVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipmentId'] = this.shipmentId;
      json[r'riskScore'] = this.riskScore;
      json[r'reasons'] = this.reasons;
      json[r'modelVersion'] = this.modelVersion;
    return json;
  }

  /// Returns a new [AiRiskScoredData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiRiskScoredData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiRiskScoredData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiRiskScoredData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiRiskScoredData(
        shipmentId: mapValueOfType<String>(json, r'shipmentId')!,
        riskScore: num.parse('${json[r'riskScore']}'),
        reasons: json[r'reasons'] is Iterable
            ? (json[r'reasons'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        modelVersion: mapValueOfType<String>(json, r'modelVersion')!,
      );
    }
    return null;
  }

  static List<AiRiskScoredData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiRiskScoredData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiRiskScoredData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiRiskScoredData> mapFromJson(dynamic json) {
    final map = <String, AiRiskScoredData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiRiskScoredData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiRiskScoredData-objects as value to a dart map
  static Map<String, List<AiRiskScoredData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiRiskScoredData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiRiskScoredData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipmentId',
    'riskScore',
    'modelVersion',
  };
}

