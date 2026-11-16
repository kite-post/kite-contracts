//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ShipmentsApi {
  ShipmentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Додати сторонній номер
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExternalTrackingRequest] externalTrackingRequest (required):
  Future<Response> addExternalTrackingWithHttpInfo(ExternalTrackingRequest externalTrackingRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/external-tracking';

    // ignore: prefer_final_locals
    Object? postBody = externalTrackingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Додати сторонній номер
  ///
  /// Parameters:
  ///
  /// * [ExternalTrackingRequest] externalTrackingRequest (required):
  Future<ExternalTracking?> addExternalTracking(ExternalTrackingRequest externalTrackingRequest,) async {
    final response = await addExternalTrackingWithHttpInfo(externalTrackingRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExternalTracking',) as ExternalTracking;
    
    }
    return null;
  }

  /// Скасувати до прийому (T2)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CancelShipmentRequest] cancelShipmentRequest:
  Future<Response> cancelShipmentWithHttpInfo(String id, String idempotencyKey, { CancelShipmentRequest? cancelShipmentRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}/cancel'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = cancelShipmentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Скасувати до прийому (T2)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CancelShipmentRequest] cancelShipmentRequest:
  Future<Shipment?> cancelShipment(String id, String idempotencyKey, { CancelShipmentRequest? cancelShipmentRequest, }) async {
    final response = await cancelShipmentWithHttpInfo(id, idempotencyKey,  cancelShipmentRequest: cancelShipmentRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// Підтвердити чернетку (T1, DRAFT → CREATED)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  Future<Response> confirmShipmentWithHttpInfo(String id, String idempotencyKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}/confirm'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Підтвердити чернетку (T1, DRAFT → CREATED)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  Future<Shipment?> confirmShipment(String id, String idempotencyKey,) async {
    final response = await confirmShipmentWithHttpInfo(id, idempotencyKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// Створити чернетку або одразу підтверджене відправлення
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CreateShipmentRequest] createShipmentRequest (required):
  Future<Response> createShipmentWithHttpInfo(String idempotencyKey, CreateShipmentRequest createShipmentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments';

    // ignore: prefer_final_locals
    Object? postBody = createShipmentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Створити чернетку або одразу підтверджене відправлення
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CreateShipmentRequest] createShipmentRequest (required):
  Future<Shipment?> createShipment(String idempotencyKey, CreateShipmentRequest createShipmentRequest,) async {
    final response = await createShipmentWithHttpInfo(idempotencyKey, createShipmentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// Прибрати сторонній номер
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteExternalTrackingWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/external-tracking/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Прибрати сторонній номер
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteExternalTracking(String id,) async {
    final response = await deleteExternalTrackingWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Деталі відправлення
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> getShipmentWithHttpInfo(String id, { String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Деталі відправлення
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Shipment?> getShipment(String id, { String? acceptLanguage, }) async {
    final response = await getShipmentWithHttpInfo(id,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }

  /// QR для відправки без етикетки
  ///
  /// Підписаний токен `kite://ship/{shipmentId}?t=<JWS, 7 днів>` у вигляді SVG.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getShipmentQrWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}/qr'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// QR для відправки без етикетки
  ///
  /// Підписаний токен `kite://ship/{shipmentId}?t=<JWS, 7 днів>` у вигляді SVG.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<String?> getShipmentQr(String id,) async {
    final response = await getShipmentQrWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Таймлайн подій і прогноз
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> getShipmentTimelineWithHttpInfo(String id, { String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}/timeline'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Таймлайн подій і прогноз
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Timeline?> getShipmentTimeline(String id, { String? acceptLanguage, }) async {
    final response = await getShipmentTimelineWithHttpInfo(id,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Timeline',) as Timeline;
    
    }
    return null;
  }

  /// Сторонні номери
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listExternalTrackingWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me/external-tracking';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Сторонні номери
  Future<List<ExternalTracking>?> listExternalTracking() async {
    final response = await listExternalTrackingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExternalTracking>') as List)
        .cast<ExternalTracking>()
        .toList(growable: false);

    }
    return null;
  }

  /// Доступні дії з цінами для поточного стану
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> listShipmentActionsWithHttpInfo(String id, { String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}/actions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Доступні дії з цінами для поточного стану
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<List<AvailableAction>?> listShipmentActions(String id, { String? acceptLanguage, }) async {
    final response = await listShipmentActionsWithHttpInfo(id,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AvailableAction>') as List)
        .cast<AvailableAction>()
        .toList(growable: false);

    }
    return null;
  }

  /// Дашборд «мені / від мене / архів»
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ShipmentDirection] direction (required):
  ///
  /// * [List<ShipmentStatus>] status:
  ///   Фільтр за станом; можна повторювати
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> listShipmentsWithHttpInfo(ShipmentDirection direction, { List<ShipmentStatus>? status, int? limit, String? cursor, String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'direction', direction));
    if (status != null) {
      queryParams.addAll(_queryParams('multi', 'status', status));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Дашборд «мені / від мене / архів»
  ///
  /// Parameters:
  ///
  /// * [ShipmentDirection] direction (required):
  ///
  /// * [List<ShipmentStatus>] status:
  ///   Фільтр за станом; можна повторювати
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<ShipmentPage?> listShipments(ShipmentDirection direction, { List<ShipmentStatus>? status, int? limit, String? cursor, String? acceptLanguage, }) async {
    final response = await listShipmentsWithHttpInfo(direction,  status: status, limit: limit, cursor: cursor, acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShipmentPage',) as ShipmentPage;
    
    }
    return null;
  }

  /// Керування доставкою
  ///
  /// Переадресація (T9, T10), відпустка (T11), зміна отримувача, продовження зберігання і відмова (T14). Платні дії повертають `payment` із `redirectUrl`, поки вона не оплачена. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DeliveryActionType] action (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [DeliveryActionRequest] deliveryActionRequest (required):
  Future<Response> requestShipmentActionWithHttpInfo(String id, DeliveryActionType action, String idempotencyKey, DeliveryActionRequest deliveryActionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}/actions/{action}'
      .replaceAll('{id}', id)
      .replaceAll('{action}', action.toString());

    // ignore: prefer_final_locals
    Object? postBody = deliveryActionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Керування доставкою
  ///
  /// Переадресація (T9, T10), відпустка (T11), зміна отримувача, продовження зберігання і відмова (T14). Платні дії повертають `payment` із `redirectUrl`, поки вона не оплачена. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DeliveryActionType] action (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [DeliveryActionRequest] deliveryActionRequest (required):
  Future<DeliveryAction?> requestShipmentAction(String id, DeliveryActionType action, String idempotencyKey, DeliveryActionRequest deliveryActionRequest,) async {
    final response = await requestShipmentActionWithHttpInfo(id, action, idempotencyKey, deliveryActionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliveryAction',) as DeliveryAction;
    
    }
    return null;
  }

  /// Змінити чернетку
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] ifMatch (required):
  ///   ETag версії, яку змінюємо
  ///
  /// * [ShipmentPatch] shipmentPatch (required):
  Future<Response> updateShipmentWithHttpInfo(String id, String ifMatch, ShipmentPatch shipmentPatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/shipments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = shipmentPatch;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'If-Match'] = parameterToString(ifMatch);

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Змінити чернетку
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] ifMatch (required):
  ///   ETag версії, яку змінюємо
  ///
  /// * [ShipmentPatch] shipmentPatch (required):
  Future<Shipment?> updateShipment(String id, String ifMatch, ShipmentPatch shipmentPatch,) async {
    final response = await updateShipmentWithHttpInfo(id, ifMatch, shipmentPatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Shipment',) as Shipment;
    
    }
    return null;
  }
}
