//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class AttachmentRequest {
  /// Returns a new [AttachmentRequest] instance.
  AttachmentRequest({
    required this.fileName,
    required this.contentType,
    required this.sizeBytes,
  });

  String fileName;

  AttachmentRequestContentTypeEnum contentType;

  /// Maximum value: 10485760
  int sizeBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentRequest &&
    other.fileName == fileName &&
    other.contentType == contentType &&
    other.sizeBytes == sizeBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileName.hashCode) +
    (contentType.hashCode) +
    (sizeBytes.hashCode);

  @override
  String toString() => 'AttachmentRequest[fileName=$fileName, contentType=$contentType, sizeBytes=$sizeBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fileName'] = this.fileName;
      json[r'contentType'] = this.contentType;
      json[r'sizeBytes'] = this.sizeBytes;
    return json;
  }

  /// Returns a new [AttachmentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentRequest(
        fileName: mapValueOfType<String>(json, r'fileName')!,
        contentType: AttachmentRequestContentTypeEnum.fromJson(json[r'contentType'])!,
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes')!,
      );
    }
    return null;
  }

  static List<AttachmentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentRequest> mapFromJson(dynamic json) {
    final map = <String, AttachmentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentRequest-objects as value to a dart map
  static Map<String, List<AttachmentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fileName',
    'contentType',
    'sizeBytes',
  };
}


class AttachmentRequestContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AttachmentRequestContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const imageSlashJpeg = AttachmentRequestContentTypeEnum._(r'image/jpeg');
  static const imageSlashPng = AttachmentRequestContentTypeEnum._(r'image/png');
  static const imageSlashHeic = AttachmentRequestContentTypeEnum._(r'image/heic');
  static const applicationSlashPdf = AttachmentRequestContentTypeEnum._(r'application/pdf');

  /// List of all possible values in this [enum][AttachmentRequestContentTypeEnum].
  static const values = <AttachmentRequestContentTypeEnum>[
    imageSlashJpeg,
    imageSlashPng,
    imageSlashHeic,
    applicationSlashPdf,
  ];

  static AttachmentRequestContentTypeEnum? fromJson(dynamic value) => AttachmentRequestContentTypeEnumTypeTransformer().decode(value);

  static List<AttachmentRequestContentTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentRequestContentTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentRequestContentTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AttachmentRequestContentTypeEnum] to String,
/// and [decode] dynamic data back to [AttachmentRequestContentTypeEnum].
class AttachmentRequestContentTypeEnumTypeTransformer {
  factory AttachmentRequestContentTypeEnumTypeTransformer() => _instance ??= const AttachmentRequestContentTypeEnumTypeTransformer._();

  const AttachmentRequestContentTypeEnumTypeTransformer._();

  String encode(AttachmentRequestContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AttachmentRequestContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AttachmentRequestContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'image/jpeg': return AttachmentRequestContentTypeEnum.imageSlashJpeg;
        case r'image/png': return AttachmentRequestContentTypeEnum.imageSlashPng;
        case r'image/heic': return AttachmentRequestContentTypeEnum.imageSlashHeic;
        case r'application/pdf': return AttachmentRequestContentTypeEnum.applicationSlashPdf;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AttachmentRequestContentTypeEnumTypeTransformer] instance.
  static AttachmentRequestContentTypeEnumTypeTransformer? _instance;
}


