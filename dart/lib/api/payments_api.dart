//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class PaymentsApi {
  PaymentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Створити платіж
  ///
  /// Повертає `redirectUrl` на сторінку mock-pay.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CreatePaymentRequest] createPaymentRequest (required):
  Future<Response> createPaymentWithHttpInfo(String idempotencyKey, CreatePaymentRequest createPaymentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/payments';

    // ignore: prefer_final_locals
    Object? postBody = createPaymentRequest;

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

  /// Створити платіж
  ///
  /// Повертає `redirectUrl` на сторінку mock-pay.
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CreatePaymentRequest] createPaymentRequest (required):
  Future<Payment?> createPayment(String idempotencyKey, CreatePaymentRequest createPaymentRequest,) async {
    final response = await createPaymentWithHttpInfo(idempotencyKey, createPaymentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Payment',) as Payment;
    
    }
    return null;
  }

  /// Баланс балів і проводки
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
  Future<Response> getBonusAccountWithHttpInfo({ int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/me/bonuses';

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

  /// Баланс балів і проводки
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  Future<BonusAccount?> getBonusAccount({ int? limit, String? cursor, }) async {
    final response = await getBonusAccountWithHttpInfo( limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BonusAccount',) as BonusAccount;
    
    }
    return null;
  }

  /// Стан платежу
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getPaymentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/payments/{id}'
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

  /// Стан платежу
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Payment?> getPayment(String id,) async {
    final response = await getPaymentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Payment',) as Payment;
    
    }
    return null;
  }

  /// Перевірити промокод
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PromoCodeValidateRequest] promoCodeValidateRequest (required):
  Future<Response> validatePromoCodeWithHttpInfo(PromoCodeValidateRequest promoCodeValidateRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/promo-codes/validate';

    // ignore: prefer_final_locals
    Object? postBody = promoCodeValidateRequest;

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

  /// Перевірити промокод
  ///
  /// Parameters:
  ///
  /// * [PromoCodeValidateRequest] promoCodeValidateRequest (required):
  Future<PromoCodeValidation?> validatePromoCode(PromoCodeValidateRequest promoCodeValidateRequest,) async {
    final response = await validatePromoCodeWithHttpInfo(promoCodeValidateRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PromoCodeValidation',) as PromoCodeValidation;
    
    }
    return null;
  }
}
