//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class RouteStop {
  /// Returns a new [RouteStop] instance.
  RouteStop({
    required this.seq,
    required this.location,
    required this.kind,
    this.plannedAt,
  });

  int seq;

  LocationRef location;

  RouteStopKindEnum kind;

  DateTime? plannedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteStop &&
    other.seq == seq &&
    other.location == location &&
    other.kind == kind &&
    other.plannedAt == plannedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (seq.hashCode) +
    (location.hashCode) +
    (kind.hashCode) +
    (plannedAt == null ? 0 : plannedAt!.hashCode);

  @override
  String toString() => 'RouteStop[seq=$seq, location=$location, kind=$kind, plannedAt=$plannedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'seq'] = this.seq;
      json[r'location'] = this.location;
      json[r'kind'] = this.kind;
    if (this.plannedAt != null) {
      json[r'plannedAt'] = this.plannedAt!.toUtc().toIso8601String();
    } else {
      json[r'plannedAt'] = null;
    }
    return json;
  }

  /// Returns a new [RouteStop] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteStop? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteStop[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteStop[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteStop(
        seq: mapValueOfType<int>(json, r'seq')!,
        location: LocationRef.fromJson(json[r'location'])!,
        kind: RouteStopKindEnum.fromJson(json[r'kind'])!,
        plannedAt: mapDateTime(json, r'plannedAt', r''),
      );
    }
    return null;
  }

  static List<RouteStop> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteStop>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteStop.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteStop> mapFromJson(dynamic json) {
    final map = <String, RouteStop>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteStop.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteStop-objects as value to a dart map
  static Map<String, List<RouteStop>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteStop>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RouteStop.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'seq',
    'location',
    'kind',
  };
}


class RouteStopKindEnum {
  /// Instantiate a new enum with the provided [value].
  const RouteStopKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ORIGIN = RouteStopKindEnum._(r'ORIGIN');
  static const HUB = RouteStopKindEnum._(r'HUB');
  static const DESTINATION = RouteStopKindEnum._(r'DESTINATION');

  /// List of all possible values in this [enum][RouteStopKindEnum].
  static const values = <RouteStopKindEnum>[
    ORIGIN,
    HUB,
    DESTINATION,
  ];

  static RouteStopKindEnum? fromJson(dynamic value) => RouteStopKindEnumTypeTransformer().decode(value);

  static List<RouteStopKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteStopKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteStopKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RouteStopKindEnum] to String,
/// and [decode] dynamic data back to [RouteStopKindEnum].
class RouteStopKindEnumTypeTransformer {
  factory RouteStopKindEnumTypeTransformer() => _instance ??= const RouteStopKindEnumTypeTransformer._();

  const RouteStopKindEnumTypeTransformer._();

  String encode(RouteStopKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteStopKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteStopKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ORIGIN': return RouteStopKindEnum.ORIGIN;
        case r'HUB': return RouteStopKindEnum.HUB;
        case r'DESTINATION': return RouteStopKindEnum.DESTINATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RouteStopKindEnumTypeTransformer] instance.
  static RouteStopKindEnumTypeTransformer? _instance;
}


