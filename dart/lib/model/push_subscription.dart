//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class PushSubscription {
  /// Returns a new [PushSubscription] instance.
  PushSubscription({
    required this.id,
    required this.kind,
    this.deviceName,
    required this.createdAt,
  });

  String id;

  PushSubscriptionKindEnum kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceName;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushSubscription &&
    other.id == id &&
    other.kind == kind &&
    other.deviceName == deviceName &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (kind.hashCode) +
    (deviceName == null ? 0 : deviceName!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'PushSubscription[id=$id, kind=$kind, deviceName=$deviceName, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'kind'] = this.kind;
    if (this.deviceName != null) {
      json[r'deviceName'] = this.deviceName;
    } else {
      json[r'deviceName'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PushSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushSubscription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushSubscription(
        id: mapValueOfType<String>(json, r'id')!,
        kind: PushSubscriptionKindEnum.fromJson(json[r'kind'])!,
        deviceName: mapValueOfType<String>(json, r'deviceName'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
      );
    }
    return null;
  }

  static List<PushSubscription> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushSubscription> mapFromJson(dynamic json) {
    final map = <String, PushSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushSubscription-objects as value to a dart map
  static Map<String, List<PushSubscription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushSubscription.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'kind',
    'createdAt',
  };
}


class PushSubscriptionKindEnum {
  /// Instantiate a new enum with the provided [value].
  const PushSubscriptionKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WEB_PUSH = PushSubscriptionKindEnum._(r'WEB_PUSH');
  static const FCM = PushSubscriptionKindEnum._(r'FCM');

  /// List of all possible values in this [enum][PushSubscriptionKindEnum].
  static const values = <PushSubscriptionKindEnum>[
    WEB_PUSH,
    FCM,
  ];

  static PushSubscriptionKindEnum? fromJson(dynamic value) => PushSubscriptionKindEnumTypeTransformer().decode(value);

  static List<PushSubscriptionKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushSubscriptionKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushSubscriptionKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PushSubscriptionKindEnum] to String,
/// and [decode] dynamic data back to [PushSubscriptionKindEnum].
class PushSubscriptionKindEnumTypeTransformer {
  factory PushSubscriptionKindEnumTypeTransformer() => _instance ??= const PushSubscriptionKindEnumTypeTransformer._();

  const PushSubscriptionKindEnumTypeTransformer._();

  String encode(PushSubscriptionKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PushSubscriptionKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PushSubscriptionKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WEB_PUSH': return PushSubscriptionKindEnum.WEB_PUSH;
        case r'FCM': return PushSubscriptionKindEnum.FCM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PushSubscriptionKindEnumTypeTransformer] instance.
  static PushSubscriptionKindEnumTypeTransformer? _instance;
}


