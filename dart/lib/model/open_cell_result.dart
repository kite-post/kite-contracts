//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class OpenCellResult {
  /// Returns a new [OpenCellResult] instance.
  OpenCellResult({
    required this.cellCode,
    this.size,
    required this.opensAt,
    required this.expiresAt,
  });

  String cellCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CellSize? size;

  DateTime opensAt;

  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenCellResult &&
    other.cellCode == cellCode &&
    other.size == size &&
    other.opensAt == opensAt &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cellCode.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (opensAt.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'OpenCellResult[cellCode=$cellCode, size=$size, opensAt=$opensAt, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cellCode'] = this.cellCode;
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
      json[r'opensAt'] = this.opensAt.toUtc().toIso8601String();
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OpenCellResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenCellResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenCellResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenCellResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenCellResult(
        cellCode: mapValueOfType<String>(json, r'cellCode')!,
        size: CellSize.fromJson(json[r'size']),
        opensAt: mapDateTime(json, r'opensAt', r'')!,
        expiresAt: mapDateTime(json, r'expiresAt', r'')!,
      );
    }
    return null;
  }

  static List<OpenCellResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenCellResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenCellResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenCellResult> mapFromJson(dynamic json) {
    final map = <String, OpenCellResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenCellResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenCellResult-objects as value to a dart map
  static Map<String, List<OpenCellResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenCellResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenCellResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cellCode',
    'opensAt',
    'expiresAt',
  };
}

