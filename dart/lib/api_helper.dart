//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() => '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

// Ported from the Java version.
Iterable<QueryParam> _queryParams(String collectionFormat, String name, dynamic value,) {
  // Assertions to run in debug mode only.
  assert(name.isNotEmpty, 'Parameter cannot be an empty string.');

  final params = <QueryParam>[];

  if (value is List) {
    if (collectionFormat == 'multi') {
      return value.map((dynamic v) => QueryParam(name, parameterToString(v)),);
    }

    // Default collection format is 'csv'.
    if (collectionFormat.isEmpty) {
      collectionFormat = 'csv'; // ignore: parameter_assignments
    }

    final delimiter = _delimiters[collectionFormat] ?? ',';

    params.add(QueryParam(name, value.map<dynamic>(parameterToString).join(delimiter),));
  } else if (value != null) {
    params.add(QueryParam(name, parameterToString(value)));
  }

  return params;
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is ActorRole) {
    return ActorRoleTypeTransformer().encode(value).toString();
  }
  if (value is CellSize) {
    return CellSizeTypeTransformer().encode(value).toString();
  }
  if (value is ClaimStatus) {
    return ClaimStatusTypeTransformer().encode(value).toString();
  }
  if (value is ClaimType) {
    return ClaimTypeTypeTransformer().encode(value).toString();
  }
  if (value is DeliveryActionStatus) {
    return DeliveryActionStatusTypeTransformer().encode(value).toString();
  }
  if (value is DeliveryActionType) {
    return DeliveryActionTypeTypeTransformer().encode(value).toString();
  }
  if (value is DeliveryZone) {
    return DeliveryZoneTypeTransformer().encode(value).toString();
  }
  if (value is KiteEventType) {
    return KiteEventTypeTypeTransformer().encode(value).toString();
  }
  if (value is KiteTopic) {
    return KiteTopicTypeTransformer().encode(value).toString();
  }
  if (value is Locale) {
    return LocaleTypeTransformer().encode(value).toString();
  }
  if (value is LocationService) {
    return LocationServiceTypeTransformer().encode(value).toString();
  }
  if (value is LocationType) {
    return LocationTypeTypeTransformer().encode(value).toString();
  }
  if (value is NotificationChannel) {
    return NotificationChannelTypeTransformer().encode(value).toString();
  }
  if (value is NotificationEventType) {
    return NotificationEventTypeTypeTransformer().encode(value).toString();
  }
  if (value is PayerType) {
    return PayerTypeTypeTransformer().encode(value).toString();
  }
  if (value is PaymentMethod) {
    return PaymentMethodTypeTransformer().encode(value).toString();
  }
  if (value is PaymentStatus) {
    return PaymentStatusTypeTransformer().encode(value).toString();
  }
  if (value is PaymentSubject) {
    return PaymentSubjectTypeTransformer().encode(value).toString();
  }
  if (value is Permission) {
    return PermissionTypeTransformer().encode(value).toString();
  }
  if (value is ProviderFailureCode) {
    return ProviderFailureCodeTypeTransformer().encode(value).toString();
  }
  if (value is ProviderPaymentEventType) {
    return ProviderPaymentEventTypeTypeTransformer().encode(value).toString();
  }
  if (value is Role) {
    return RoleTypeTransformer().encode(value).toString();
  }
  if (value is ScanOperation) {
    return ScanOperationTypeTransformer().encode(value).toString();
  }
  if (value is ScanOutcome) {
    return ScanOutcomeTypeTransformer().encode(value).toString();
  }
  if (value is ScanWarningCode) {
    return ScanWarningCodeTypeTransformer().encode(value).toString();
  }
  if (value is ServiceCode) {
    return ServiceCodeTypeTransformer().encode(value).toString();
  }
  if (value is ShipmentDirection) {
    return ShipmentDirectionTypeTransformer().encode(value).toString();
  }
  if (value is ShipmentStatus) {
    return ShipmentStatusTypeTransformer().encode(value).toString();
  }
  if (value is ShipmentType) {
    return ShipmentTypeTypeTransformer().encode(value).toString();
  }
  if (value is Theme) {
    return ThemeTypeTransformer().encode(value).toString();
  }
  if (value is TicketStatus) {
    return TicketStatusTypeTransformer().encode(value).toString();
  }
  return value.toString();
}

/// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
/// content type. Otherwise, returns the decoded body as decoded by dart:http package.
Future<String> _decodeBodyBytes(Response response) async {
  final contentType = response.headers['content-type'];
  return contentType != null && contentType.toLowerCase().startsWith('application/json')
    ? response.bodyBytes.isEmpty ? '' : utf8.decode(response.bodyBytes)
    : response.body;
}

/// Returns a valid [T] value found at the specified Map [key], null otherwise.
T? mapValueOfType<T>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  if (T == double && value is int) {
    return value.toDouble() as T;
  }
  return value is T ? value : null;
}

/// Returns a valid Map<K, V> found at the specified Map [key], null otherwise.
Map<K, V>? mapCastOfType<K, V>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is Map ? value.cast<K, V>() : null;
}

/// Returns a valid [DateTime] found at the specified Map [key], null otherwise.
DateTime? mapDateTime(dynamic map, String key, [String? pattern]) {
  final dynamic value = map is Map ? map[key] : null;
  if (value != null) {
    int? millis;
    if (value is int) {
      millis = value;
    } else if (value is String) {
      if (_isEpochMarker(pattern)) {
        millis = int.tryParse(value);
      } else {
        return DateTime.tryParse(value);
      }
    }
    if (millis != null) {
      return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    }
  }
  return null;
}
