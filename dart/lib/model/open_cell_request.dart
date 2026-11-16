//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class OpenCellRequest {
  /// Returns a new [OpenCellRequest] instance.
  OpenCellRequest({
    required this.purpose,
    this.shipmentId,
    this.bookingId,
    this.pickupCode,
  });

  OpenCellRequestPurposeEnum purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bookingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pickupCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenCellRequest &&
    other.purpose == purpose &&
    other.shipmentId == shipmentId &&
    other.bookingId == bookingId &&
    other.pickupCode == pickupCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (purpose.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (bookingId == null ? 0 : bookingId!.hashCode) +
    (pickupCode == null ? 0 : pickupCode!.hashCode);

  @override
  String toString() => 'OpenCellRequest[purpose=$purpose, shipmentId=$shipmentId, bookingId=$bookingId, pickupCode=$pickupCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'purpose'] = this.purpose;
    if (this.shipmentId != null) {
      json[r'shipmentId'] = this.shipmentId;
    } else {
      json[r'shipmentId'] = null;
    }
    if (this.bookingId != null) {
      json[r'bookingId'] = this.bookingId;
    } else {
      json[r'bookingId'] = null;
    }
    if (this.pickupCode != null) {
      json[r'pickupCode'] = this.pickupCode;
    } else {
      json[r'pickupCode'] = null;
    }
    return json;
  }

  /// Returns a new [OpenCellRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenCellRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenCellRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenCellRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenCellRequest(
        purpose: OpenCellRequestPurposeEnum.fromJson(json[r'purpose'])!,
        shipmentId: mapValueOfType<String>(json, r'shipmentId'),
        bookingId: mapValueOfType<String>(json, r'bookingId'),
        pickupCode: mapValueOfType<String>(json, r'pickupCode'),
      );
    }
    return null;
  }

  static List<OpenCellRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenCellRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenCellRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenCellRequest> mapFromJson(dynamic json) {
    final map = <String, OpenCellRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenCellRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenCellRequest-objects as value to a dart map
  static Map<String, List<OpenCellRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenCellRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenCellRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'purpose',
  };
}


class OpenCellRequestPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const OpenCellRequestPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PICKUP = OpenCellRequestPurposeEnum._(r'PICKUP');
  static const DROPOFF = OpenCellRequestPurposeEnum._(r'DROPOFF');
  static const STORAGE = OpenCellRequestPurposeEnum._(r'STORAGE');

  /// List of all possible values in this [enum][OpenCellRequestPurposeEnum].
  static const values = <OpenCellRequestPurposeEnum>[
    PICKUP,
    DROPOFF,
    STORAGE,
  ];

  static OpenCellRequestPurposeEnum? fromJson(dynamic value) => OpenCellRequestPurposeEnumTypeTransformer().decode(value);

  static List<OpenCellRequestPurposeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenCellRequestPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenCellRequestPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OpenCellRequestPurposeEnum] to String,
/// and [decode] dynamic data back to [OpenCellRequestPurposeEnum].
class OpenCellRequestPurposeEnumTypeTransformer {
  factory OpenCellRequestPurposeEnumTypeTransformer() => _instance ??= const OpenCellRequestPurposeEnumTypeTransformer._();

  const OpenCellRequestPurposeEnumTypeTransformer._();

  String encode(OpenCellRequestPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OpenCellRequestPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OpenCellRequestPurposeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PICKUP': return OpenCellRequestPurposeEnum.PICKUP;
        case r'DROPOFF': return OpenCellRequestPurposeEnum.DROPOFF;
        case r'STORAGE': return OpenCellRequestPurposeEnum.STORAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OpenCellRequestPurposeEnumTypeTransformer] instance.
  static OpenCellRequestPurposeEnumTypeTransformer? _instance;
}


