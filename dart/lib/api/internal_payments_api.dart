//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class InternalPaymentsApi {
  InternalPaymentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Вебхук платіжного провайдера (mock-pay)
  ///
  /// mock-pay повідомляє payment-service про результат платежу чи повернення (10.3). Токена Keycloak у провайдера немає, тож запит підписаний: `Kite-Signature: t=<час>,v1=<HMAC-SHA256(secret, t.body)>`, як вебхуки бізнесу (9.1); payment-service відкидає підпис, старший за 5 хв. Ідемпотентність — за `eventId`: повтор отримує 204 без повторної обробки. Будь-яка відповідь, крім 2xx, — сигнал mock-pay повторити. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProviderPaymentEvent] providerPaymentEvent (required):
  Future<Response> receiveProviderEventWithHttpInfo(ProviderPaymentEvent providerPaymentEvent,) async {
    // ignore: prefer_const_declarations
    final path = r'/internal/v1/payments/provider-events';

    // ignore: prefer_final_locals
    Object? postBody = providerPaymentEvent;

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

  /// Вебхук платіжного провайдера (mock-pay)
  ///
  /// mock-pay повідомляє payment-service про результат платежу чи повернення (10.3). Токена Keycloak у провайдера немає, тож запит підписаний: `Kite-Signature: t=<час>,v1=<HMAC-SHA256(secret, t.body)>`, як вебхуки бізнесу (9.1); payment-service відкидає підпис, старший за 5 хв. Ідемпотентність — за `eventId`: повтор отримує 204 без повторної обробки. Будь-яка відповідь, крім 2xx, — сигнал mock-pay повторити. 
  ///
  /// Parameters:
  ///
  /// * [ProviderPaymentEvent] providerPaymentEvent (required):
  Future<void> receiveProviderEvent(ProviderPaymentEvent providerPaymentEvent,) async {
    final response = await receiveProviderEventWithHttpInfo(providerPaymentEvent,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
