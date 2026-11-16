//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class LockersApi {
  LockersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Забронювати камеру зберігання в Kite Box
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [StorageBookingRequest] storageBookingRequest (required):
  Future<Response> createStorageBookingWithHttpInfo(String idempotencyKey, StorageBookingRequest storageBookingRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/storage-bookings';

    // ignore: prefer_final_locals
    Object? postBody = storageBookingRequest;

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

  /// Забронювати камеру зберігання в Kite Box
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [StorageBookingRequest] storageBookingRequest (required):
  Future<StorageBooking?> createStorageBooking(String idempotencyKey, StorageBookingRequest storageBookingRequest,) async {
    final response = await createStorageBookingWithHttpInfo(idempotencyKey, storageBookingRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageBooking',) as StorageBooking;
    
    }
    return null;
  }

  /// Мої бронювання
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  Future<Response> listStorageBookingsWithHttpInfo({ int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/storage-bookings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
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

  /// Мої бронювання
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  Future<StorageBookingPage?> listStorageBookings({ int? limit, String? cursor, }) async {
    final response = await listStorageBookingsWithHttpInfo( limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageBookingPage',) as StorageBookingPage;
    
    }
    return null;
  }

  /// Відкрити комірку (отримання або відправка)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [OpenCellRequest] openCellRequest (required):
  Future<Response> openLockerCellWithHttpInfo(String locationId, String idempotencyKey, OpenCellRequest openCellRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/lockers/{locationId}/open'
      .replaceAll('{locationId}', locationId);

    // ignore: prefer_final_locals
    Object? postBody = openCellRequest;

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

  /// Відкрити комірку (отримання або відправка)
  ///
  /// Parameters:
  ///
  /// * [String] locationId (required):
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [OpenCellRequest] openCellRequest (required):
  Future<OpenCellResult?> openLockerCell(String locationId, String idempotencyKey, OpenCellRequest openCellRequest,) async {
    final response = await openLockerCellWithHttpInfo(locationId, idempotencyKey, openCellRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OpenCellResult',) as OpenCellResult;
    
    }
    return null;
  }
}
