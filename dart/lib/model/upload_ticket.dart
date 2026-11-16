//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class UploadTicket {
  /// Returns a new [UploadTicket] instance.
  UploadTicket({
    required this.attachmentId,
    required this.uploadUrl,
    required this.expiresAt,
  });

  String attachmentId;

  /// Підписане посилання PUT у MinIO
  String uploadUrl;

  DateTime expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadTicket &&
    other.attachmentId == attachmentId &&
    other.uploadUrl == uploadUrl &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attachmentId.hashCode) +
    (uploadUrl.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'UploadTicket[attachmentId=$attachmentId, uploadUrl=$uploadUrl, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attachmentId'] = this.attachmentId;
      json[r'uploadUrl'] = this.uploadUrl;
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UploadTicket] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadTicket? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UploadTicket[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UploadTicket[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UploadTicket(
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        uploadUrl: mapValueOfType<String>(json, r'uploadUrl')!,
        expiresAt: mapDateTime(json, r'expiresAt', r'')!,
      );
    }
    return null;
  }

  static List<UploadTicket> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadTicket>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadTicket.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadTicket> mapFromJson(dynamic json) {
    final map = <String, UploadTicket>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadTicket.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadTicket-objects as value to a dart map
  static Map<String, List<UploadTicket>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadTicket>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UploadTicket.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'attachmentId',
    'uploadUrl',
    'expiresAt',
  };
}

