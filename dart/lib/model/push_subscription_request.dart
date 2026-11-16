//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PushSubscriptionRequest {
  /// Returns a new [PushSubscriptionRequest] instance.
  PushSubscriptionRequest({
    required this.kind,
    required this.token,
    this.keys = const {},
    this.deviceName,
  });

  PushSubscriptionRequestKindEnum kind;

  /// Endpoint VAPID або токен FCM
  String token;

  Map<String, String> keys;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushSubscriptionRequest &&
    other.kind == kind &&
    other.token == token &&
    _deepEquality.equals(other.keys, keys) &&
    other.deviceName == deviceName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (token.hashCode) +
    (keys.hashCode) +
    (deviceName == null ? 0 : deviceName!.hashCode);

  @override
  String toString() => 'PushSubscriptionRequest[kind=$kind, token=$token, keys=$keys, deviceName=$deviceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'token'] = this.token;
      json[r'keys'] = this.keys;
    if (this.deviceName != null) {
      json[r'deviceName'] = this.deviceName;
    } else {
      json[r'deviceName'] = null;
    }
    return json;
  }

  /// Returns a new [PushSubscriptionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushSubscriptionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushSubscriptionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushSubscriptionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushSubscriptionRequest(
        kind: PushSubscriptionRequestKindEnum.fromJson(json[r'kind'])!,
        token: mapValueOfType<String>(json, r'token')!,
        keys: mapCastOfType<String, String>(json, r'keys') ?? const {},
        deviceName: mapValueOfType<String>(json, r'deviceName'),
      );
    }
    return null;
  }

  static List<PushSubscriptionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushSubscriptionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushSubscriptionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushSubscriptionRequest> mapFromJson(dynamic json) {
    final map = <String, PushSubscriptionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushSubscriptionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushSubscriptionRequest-objects as value to a dart map
  static Map<String, List<PushSubscriptionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushSubscriptionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushSubscriptionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'token',
  };
}


class PushSubscriptionRequestKindEnum {
  /// Instantiate a new enum with the provided [value].
  const PushSubscriptionRequestKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WEB_PUSH = PushSubscriptionRequestKindEnum._(r'WEB_PUSH');
  static const FCM = PushSubscriptionRequestKindEnum._(r'FCM');

  /// List of all possible values in this [enum][PushSubscriptionRequestKindEnum].
  static const values = <PushSubscriptionRequestKindEnum>[
    WEB_PUSH,
    FCM,
  ];

  static PushSubscriptionRequestKindEnum? fromJson(dynamic value) => PushSubscriptionRequestKindEnumTypeTransformer().decode(value);

  static List<PushSubscriptionRequestKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushSubscriptionRequestKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushSubscriptionRequestKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PushSubscriptionRequestKindEnum] to String,
/// and [decode] dynamic data back to [PushSubscriptionRequestKindEnum].
class PushSubscriptionRequestKindEnumTypeTransformer {
  factory PushSubscriptionRequestKindEnumTypeTransformer() => _instance ??= const PushSubscriptionRequestKindEnumTypeTransformer._();

  const PushSubscriptionRequestKindEnumTypeTransformer._();

  String encode(PushSubscriptionRequestKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PushSubscriptionRequestKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PushSubscriptionRequestKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WEB_PUSH': return PushSubscriptionRequestKindEnum.WEB_PUSH;
        case r'FCM': return PushSubscriptionRequestKindEnum.FCM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PushSubscriptionRequestKindEnumTypeTransformer] instance.
  static PushSubscriptionRequestKindEnumTypeTransformer? _instance;
}


