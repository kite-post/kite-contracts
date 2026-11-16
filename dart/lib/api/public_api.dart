//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class PublicApi {
  PublicApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Калькулятор вартості
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QuoteRequest] quoteRequest (required):
  Future<Response> calculateQuoteWithHttpInfo(QuoteRequest quoteRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/public/quotes';

    // ignore: prefer_final_locals
    Object? postBody = quoteRequest;

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

  /// Калькулятор вартості
  ///
  /// Parameters:
  ///
  /// * [QuoteRequest] quoteRequest (required):
  Future<Quote?> calculateQuote(QuoteRequest quoteRequest,) async {
    final response = await calculateQuoteWithHttpInfo(quoteRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Quote',) as Quote;
    
    }
    return null;
  }

  /// Картка точки
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> getPublicLocationWithHttpInfo(String id, { String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/public/locations/{id}'
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

  /// Картка точки
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Location?> getPublicLocation(String id, { String? acceptLanguage, }) async {
    final response = await getPublicLocationWithHttpInfo(id,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Location',) as Location;
    
    }
    return null;
  }

  /// Точки на карті
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bbox:
  ///   Прямокутник `minLon,minLat,maxLon,maxLat`
  ///
  /// * [LocationType] type:
  ///
  /// * [LocationService] service:
  ///   Фільтр за послугою точки
  ///
  /// * [bool] openNow:
  ///
  /// * [CellSize] freeCellSize:
  ///   Є вільна комірка такого розміру
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> listPublicLocationsWithHttpInfo({ String? bbox, LocationType? type, LocationService? service, bool? openNow, CellSize? freeCellSize, int? limit, String? cursor, String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/public/locations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (bbox != null) {
      queryParams.addAll(_queryParams('', 'bbox', bbox));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (service != null) {
      queryParams.addAll(_queryParams('', 'service', service));
    }
    if (openNow != null) {
      queryParams.addAll(_queryParams('', 'openNow', openNow));
    }
    if (freeCellSize != null) {
      queryParams.addAll(_queryParams('', 'freeCellSize', freeCellSize));
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

  /// Точки на карті
  ///
  /// Parameters:
  ///
  /// * [String] bbox:
  ///   Прямокутник `minLon,minLat,maxLon,maxLat`
  ///
  /// * [LocationType] type:
  ///
  /// * [LocationService] service:
  ///   Фільтр за послугою точки
  ///
  /// * [bool] openNow:
  ///
  /// * [CellSize] freeCellSize:
  ///   Є вільна комірка такого розміру
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<LocationPage?> listPublicLocations({ String? bbox, LocationType? type, LocationService? service, bool? openNow, CellSize? freeCellSize, int? limit, String? cursor, String? acceptLanguage, }) async {
    final response = await listPublicLocationsWithHttpInfo( bbox: bbox, type: type, service: service, openNow: openNow, freeCellSize: freeCellSize, limit: limit, cursor: cursor, acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LocationPage',) as LocationPage;
    
    }
    return null;
  }

  /// Публічний статус без персональних даних
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] trackingNumber (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> trackPublicWithHttpInfo(String trackingNumber, { String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/public/track/{trackingNumber}'
      .replaceAll('{trackingNumber}', trackingNumber);

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

  /// Публічний статус без персональних даних
  ///
  /// Parameters:
  ///
  /// * [String] trackingNumber (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<PublicTracking?> trackPublic(String trackingNumber, { String? acceptLanguage, }) async {
    final response = await trackPublicWithHttpInfo(trackingNumber,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicTracking',) as PublicTracking;
    
    }
    return null;
  }
}
