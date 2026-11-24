//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost:8080/api/v1', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ActorRole':
          return ActorRoleTypeTransformer().decode(value);
        case 'Address':
          return Address.fromJson(value);
        case 'AiEtaPredictedData':
          return AiEtaPredictedData.fromJson(value);
        case 'AiEtaPredictedEvent':
          return AiEtaPredictedEvent.fromJson(value);
        case 'AiRiskScoredData':
          return AiRiskScoredData.fromJson(value);
        case 'AiRiskScoredEvent':
          return AiRiskScoredEvent.fromJson(value);
        case 'AttachmentRequest':
          return AttachmentRequest.fromJson(value);
        case 'AuditPiiAccessedData':
          return AuditPiiAccessedData.fromJson(value);
        case 'AuditPiiAccessedEvent':
          return AuditPiiAccessedEvent.fromJson(value);
        case 'AuditStaffActionData':
          return AuditStaffActionData.fromJson(value);
        case 'AuditStaffActionEvent':
          return AuditStaffActionEvent.fromJson(value);
        case 'AvailableAction':
          return AvailableAction.fromJson(value);
        case 'BonusAccount':
          return BonusAccount.fromJson(value);
        case 'BonusTransaction':
          return BonusTransaction.fromJson(value);
        case 'CancelShipmentRequest':
          return CancelShipmentRequest.fromJson(value);
        case 'CareClaimCreatedData':
          return CareClaimCreatedData.fromJson(value);
        case 'CareClaimCreatedEvent':
          return CareClaimCreatedEvent.fromJson(value);
        case 'CareClaimResolvedData':
          return CareClaimResolvedData.fromJson(value);
        case 'CareClaimResolvedEvent':
          return CareClaimResolvedEvent.fromJson(value);
        case 'CareTicketUpdatedData':
          return CareTicketUpdatedData.fromJson(value);
        case 'CareTicketUpdatedEvent':
          return CareTicketUpdatedEvent.fromJson(value);
        case 'CellSize':
          return CellSizeTypeTransformer().decode(value);
        case 'Claim':
          return Claim.fromJson(value);
        case 'ClaimAttachmentsInner':
          return ClaimAttachmentsInner.fromJson(value);
        case 'ClaimPage':
          return ClaimPage.fromJson(value);
        case 'ClaimStatus':
          return ClaimStatusTypeTransformer().decode(value);
        case 'ClaimType':
          return ClaimTypeTypeTransformer().decode(value);
        case 'CloudEvent':
          return CloudEvent.fromJson(value);
        case 'CreateClaimRequest':
          return CreateClaimRequest.fromJson(value);
        case 'CreatePaymentRequest':
          return CreatePaymentRequest.fromJson(value);
        case 'CreateShipmentRequest':
          return CreateShipmentRequest.fromJson(value);
        case 'CreateTicketRequest':
          return CreateTicketRequest.fromJson(value);
        case 'Customer':
          return Customer.fromJson(value);
        case 'CustomerPatch':
          return CustomerPatch.fromJson(value);
        case 'CustomerPhone':
          return CustomerPhone.fromJson(value);
        case 'CustomerPhoneRemovedData':
          return CustomerPhoneRemovedData.fromJson(value);
        case 'CustomerPhoneRemovedEvent':
          return CustomerPhoneRemovedEvent.fromJson(value);
        case 'CustomerPhoneVerifiedData':
          return CustomerPhoneVerifiedData.fromJson(value);
        case 'CustomerPhoneVerifiedEvent':
          return CustomerPhoneVerifiedEvent.fromJson(value);
        case 'CustomerTrustedPersonChangedData':
          return CustomerTrustedPersonChangedData.fromJson(value);
        case 'CustomerTrustedPersonChangedEvent':
          return CustomerTrustedPersonChangedEvent.fromJson(value);
        case 'DeliveryAction':
          return DeliveryAction.fromJson(value);
        case 'DeliveryActionRequest':
          return DeliveryActionRequest.fromJson(value);
        case 'DeliveryActionStatus':
          return DeliveryActionStatusTypeTransformer().decode(value);
        case 'DeliveryActionType':
          return DeliveryActionTypeTypeTransformer().decode(value);
        case 'DeliveryZone':
          return DeliveryZoneTypeTransformer().decode(value);
        case 'Dimensions':
          return Dimensions.fromJson(value);
        case 'EtaPrediction':
          return EtaPrediction.fromJson(value);
        case 'ExternalTracking':
          return ExternalTracking.fromJson(value);
        case 'ExternalTrackingRequest':
          return ExternalTrackingRequest.fromJson(value);
        case 'FavoriteLocation':
          return FavoriteLocation.fromJson(value);
        case 'FavoriteLocationPatch':
          return FavoriteLocationPatch.fromJson(value);
        case 'FavoriteLocationRequest':
          return FavoriteLocationRequest.fromJson(value);
        case 'FieldError':
          return FieldError.fromJson(value);
        case 'GeoPoint':
          return GeoPoint.fromJson(value);
        case 'InternalQuoteRequest':
          return InternalQuoteRequest.fromJson(value);
        case 'KiteEventType':
          return KiteEventTypeTypeTransformer().decode(value);
        case 'KiteTopic':
          return KiteTopicTypeTransformer().decode(value);
        case 'Locale':
          return LocaleTypeTransformer().decode(value);
        case 'Location':
          return Location.fromJson(value);
        case 'LocationPage':
          return LocationPage.fromJson(value);
        case 'LocationRef':
          return LocationRef.fromJson(value);
        case 'LocationService':
          return LocationServiceTypeTransformer().decode(value);
        case 'LocationType':
          return LocationTypeTypeTransformer().decode(value);
        case 'LockerCellReservedData':
          return LockerCellReservedData.fromJson(value);
        case 'LockerCellReservedEvent':
          return LockerCellReservedEvent.fromJson(value);
        case 'LockerParcelCollectedData':
          return LockerParcelCollectedData.fromJson(value);
        case 'LockerParcelCollectedEvent':
          return LockerParcelCollectedEvent.fromJson(value);
        case 'LockerParcelDepositedData':
          return LockerParcelDepositedData.fromJson(value);
        case 'LockerParcelDepositedEvent':
          return LockerParcelDepositedEvent.fromJson(value);
        case 'LockerStorageExpiredData':
          return LockerStorageExpiredData.fromJson(value);
        case 'LockerStorageExpiredEvent':
          return LockerStorageExpiredEvent.fromJson(value);
        case 'LogisticsDiscrepancyOpenedData':
          return LogisticsDiscrepancyOpenedData.fromJson(value);
        case 'LogisticsDiscrepancyOpenedEvent':
          return LogisticsDiscrepancyOpenedEvent.fromJson(value);
        case 'LogisticsTripArrivedData':
          return LogisticsTripArrivedData.fromJson(value);
        case 'LogisticsTripArrivedEvent':
          return LogisticsTripArrivedEvent.fromJson(value);
        case 'LogisticsTripDepartedData':
          return LogisticsTripDepartedData.fromJson(value);
        case 'LogisticsTripDepartedEvent':
          return LogisticsTripDepartedEvent.fromJson(value);
        case 'LogisticsUnitClosedData':
          return LogisticsUnitClosedData.fromJson(value);
        case 'LogisticsUnitClosedEvent':
          return LogisticsUnitClosedEvent.fromJson(value);
        case 'Money':
          return Money.fromJson(value);
        case 'NetworkRoute':
          return NetworkRoute.fromJson(value);
        case 'NotificationChannel':
          return NotificationChannelTypeTransformer().decode(value);
        case 'NotificationEventType':
          return NotificationEventTypeTypeTransformer().decode(value);
        case 'NotificationPreferences':
          return NotificationPreferences.fromJson(value);
        case 'NotificationPreferencesItemsInner':
          return NotificationPreferencesItemsInner.fromJson(value);
        case 'OpenCellRequest':
          return OpenCellRequest.fromJson(value);
        case 'OpenCellResult':
          return OpenCellResult.fromJson(value);
        case 'OpeningHours':
          return OpeningHours.fromJson(value);
        case 'OtpChallenge':
          return OtpChallenge.fromJson(value);
        case 'OtpRequest':
          return OtpRequest.fromJson(value);
        case 'OtpVerifyRequest':
          return OtpVerifyRequest.fromJson(value);
        case 'Parcel':
          return Parcel.fromJson(value);
        case 'ParcelRequest':
          return ParcelRequest.fromJson(value);
        case 'Party':
          return Party.fromJson(value);
        case 'PayerType':
          return PayerTypeTypeTransformer().decode(value);
        case 'Payment':
          return Payment.fromJson(value);
        case 'PaymentCodCollectedData':
          return PaymentCodCollectedData.fromJson(value);
        case 'PaymentCodCollectedEvent':
          return PaymentCodCollectedEvent.fromJson(value);
        case 'PaymentFailedData':
          return PaymentFailedData.fromJson(value);
        case 'PaymentFailedEvent':
          return PaymentFailedEvent.fromJson(value);
        case 'PaymentMethod':
          return PaymentMethodTypeTransformer().decode(value);
        case 'PaymentPayoutCompletedData':
          return PaymentPayoutCompletedData.fromJson(value);
        case 'PaymentPayoutCompletedEvent':
          return PaymentPayoutCompletedEvent.fromJson(value);
        case 'PaymentRefundCompletedData':
          return PaymentRefundCompletedData.fromJson(value);
        case 'PaymentRefundCompletedEvent':
          return PaymentRefundCompletedEvent.fromJson(value);
        case 'PaymentStatus':
          return PaymentStatusTypeTransformer().decode(value);
        case 'PaymentSubject':
          return PaymentSubjectTypeTransformer().decode(value);
        case 'PaymentSucceededData':
          return PaymentSucceededData.fromJson(value);
        case 'PaymentSucceededEvent':
          return PaymentSucceededEvent.fromJson(value);
        case 'Permission':
          return PermissionTypeTransformer().decode(value);
        case 'PhoneRequest':
          return PhoneRequest.fromJson(value);
        case 'PhoneVerifyRequest':
          return PhoneVerifyRequest.fromJson(value);
        case 'Problem':
          return Problem.fromJson(value);
        case 'PromoCodeValidateRequest':
          return PromoCodeValidateRequest.fromJson(value);
        case 'PromoCodeValidation':
          return PromoCodeValidation.fromJson(value);
        case 'ProviderFailureCode':
          return ProviderFailureCodeTypeTransformer().decode(value);
        case 'ProviderPaymentEvent':
          return ProviderPaymentEvent.fromJson(value);
        case 'ProviderPaymentEventType':
          return ProviderPaymentEventTypeTypeTransformer().decode(value);
        case 'PublicTracking':
          return PublicTracking.fromJson(value);
        case 'PushSubscription':
          return PushSubscription.fromJson(value);
        case 'PushSubscriptionRequest':
          return PushSubscriptionRequest.fromJson(value);
        case 'Quote':
          return Quote.fromJson(value);
        case 'QuoteLine':
          return QuoteLine.fromJson(value);
        case 'QuoteRequest':
          return QuoteRequest.fromJson(value);
        case 'RefreshRequest':
          return RefreshRequest.fromJson(value);
        case 'Role':
          return RoleTypeTransformer().decode(value);
        case 'RouteStop':
          return RouteStop.fromJson(value);
        case 'ScanBatch':
          return ScanBatch.fromJson(value);
        case 'ScanBatchResult':
          return ScanBatchResult.fromJson(value);
        case 'ScanItem':
          return ScanItem.fromJson(value);
        case 'ScanOperation':
          return ScanOperationTypeTransformer().decode(value);
        case 'ScanOutcome':
          return ScanOutcomeTypeTransformer().decode(value);
        case 'ScanRecordedData':
          return ScanRecordedData.fromJson(value);
        case 'ScanRecordedDataSortHint':
          return ScanRecordedDataSortHint.fromJson(value);
        case 'ScanRecordedEvent':
          return ScanRecordedEvent.fromJson(value);
        case 'ScanResult':
          return ScanResult.fromJson(value);
        case 'ScanUnitScannedData':
          return ScanUnitScannedData.fromJson(value);
        case 'ScanUnitScannedEvent':
          return ScanUnitScannedEvent.fromJson(value);
        case 'ScanVoidedData':
          return ScanVoidedData.fromJson(value);
        case 'ScanVoidedEvent':
          return ScanVoidedEvent.fromJson(value);
        case 'ScanWarningCode':
          return ScanWarningCodeTypeTransformer().decode(value);
        case 'ServiceCode':
          return ServiceCodeTypeTransformer().decode(value);
        case 'Shipment':
          return Shipment.fromJson(value);
        case 'ShipmentCancelledData':
          return ShipmentCancelledData.fromJson(value);
        case 'ShipmentCancelledEvent':
          return ShipmentCancelledEvent.fromJson(value);
        case 'ShipmentConfirmedData':
          return ShipmentConfirmedData.fromJson(value);
        case 'ShipmentConfirmedEvent':
          return ShipmentConfirmedEvent.fromJson(value);
        case 'ShipmentCreatedData':
          return ShipmentCreatedData.fromJson(value);
        case 'ShipmentCreatedEvent':
          return ShipmentCreatedEvent.fromJson(value);
        case 'ShipmentDirection':
          return ShipmentDirectionTypeTransformer().decode(value);
        case 'ShipmentHoldSetData':
          return ShipmentHoldSetData.fromJson(value);
        case 'ShipmentHoldSetEvent':
          return ShipmentHoldSetEvent.fromJson(value);
        case 'ShipmentPage':
          return ShipmentPage.fromJson(value);
        case 'ShipmentPatch':
          return ShipmentPatch.fromJson(value);
        case 'ShipmentRecipientChangedData':
          return ShipmentRecipientChangedData.fromJson(value);
        case 'ShipmentRecipientChangedEvent':
          return ShipmentRecipientChangedEvent.fromJson(value);
        case 'ShipmentRedirectedData':
          return ShipmentRedirectedData.fromJson(value);
        case 'ShipmentRedirectedEvent':
          return ShipmentRedirectedEvent.fromJson(value);
        case 'ShipmentReturnCreatedData':
          return ShipmentReturnCreatedData.fromJson(value);
        case 'ShipmentReturnCreatedEvent':
          return ShipmentReturnCreatedEvent.fromJson(value);
        case 'ShipmentServiceItem':
          return ShipmentServiceItem.fromJson(value);
        case 'ShipmentStatus':
          return ShipmentStatusTypeTransformer().decode(value);
        case 'ShipmentStatusChangedData':
          return ShipmentStatusChangedData.fromJson(value);
        case 'ShipmentStatusChangedEvent':
          return ShipmentStatusChangedEvent.fromJson(value);
        case 'ShipmentSummary':
          return ShipmentSummary.fromJson(value);
        case 'ShipmentType':
          return ShipmentTypeTypeTransformer().decode(value);
        case 'SortHint':
          return SortHint.fromJson(value);
        case 'StorageBooking':
          return StorageBooking.fromJson(value);
        case 'StorageBookingPage':
          return StorageBookingPage.fromJson(value);
        case 'StorageBookingRequest':
          return StorageBookingRequest.fromJson(value);
        case 'Theme':
          return ThemeTypeTransformer().decode(value);
        case 'Ticket':
          return Ticket.fromJson(value);
        case 'TicketMessage':
          return TicketMessage.fromJson(value);
        case 'TicketMessageRequest':
          return TicketMessageRequest.fromJson(value);
        case 'TicketPage':
          return TicketPage.fromJson(value);
        case 'TicketStatus':
          return TicketStatusTypeTransformer().decode(value);
        case 'Timeline':
          return Timeline.fromJson(value);
        case 'TimelineEvent':
          return TimelineEvent.fromJson(value);
        case 'TokenPair':
          return TokenPair.fromJson(value);
        case 'TrustedPerson':
          return TrustedPerson.fromJson(value);
        case 'TrustedPersonRequest':
          return TrustedPersonRequest.fromJson(value);
        case 'UploadTicket':
          return UploadTicket.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
