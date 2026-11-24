//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class NetworkRoute {
  /// Returns a new [NetworkRoute] instance.
  NetworkRoute({
    required this.originLocationId,
    required this.destinationLocationId,
    required this.zone,
    this.stops = const [],
    this.plannedDeliveryAt,
  });

  String originLocationId;

  String destinationLocationId;

  DeliveryZone zone;

  /// Від точки прийому до точки видачі включно, у порядку проходження
  List<RouteStop> stops;

  /// Плановий час прибуття в точку видачі за розкладом
  DateTime? plannedDeliveryAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NetworkRoute &&
    other.originLocationId == originLocationId &&
    other.destinationLocationId == destinationLocationId &&
    other.zone == zone &&
    _deepEquality.equals(other.stops, stops) &&
    other.plannedDeliveryAt == plannedDeliveryAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (originLocationId.hashCode) +
    (destinationLocationId.hashCode) +
    (zone.hashCode) +
    (stops.hashCode) +
    (plannedDeliveryAt == null ? 0 : plannedDeliveryAt!.hashCode);

  @override
  String toString() => 'NetworkRoute[originLocationId=$originLocationId, destinationLocationId=$destinationLocationId, zone=$zone, stops=$stops, plannedDeliveryAt=$plannedDeliveryAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'originLocationId'] = this.originLocationId;
      json[r'destinationLocationId'] = this.destinationLocationId;
      json[r'zone'] = this.zone;
      json[r'stops'] = this.stops;
    if (this.plannedDeliveryAt != null) {
      json[r'plannedDeliveryAt'] = this.plannedDeliveryAt!.toUtc().toIso8601String();
    } else {
      json[r'plannedDeliveryAt'] = null;
    }
    return json;
  }

  /// Returns a new [NetworkRoute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkRoute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NetworkRoute[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NetworkRoute[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkRoute(
        originLocationId: mapValueOfType<String>(json, r'originLocationId')!,
        destinationLocationId: mapValueOfType<String>(json, r'destinationLocationId')!,
        zone: DeliveryZone.fromJson(json[r'zone'])!,
        stops: RouteStop.listFromJson(json[r'stops']),
        plannedDeliveryAt: mapDateTime(json, r'plannedDeliveryAt', r''),
      );
    }
    return null;
  }

  static List<NetworkRoute> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NetworkRoute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkRoute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkRoute> mapFromJson(dynamic json) {
    final map = <String, NetworkRoute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkRoute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkRoute-objects as value to a dart map
  static Map<String, List<NetworkRoute>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NetworkRoute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkRoute.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'originLocationId',
    'destinationLocationId',
    'zone',
    'stops',
  };
}

