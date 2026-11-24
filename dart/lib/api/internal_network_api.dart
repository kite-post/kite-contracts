//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class InternalNetworkApi {
  InternalNetworkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Маршрут і зона між двома точками
  ///
  /// Викликають shipment-service (запланований маршрут накладної, 6.2 `shipment_route`) і pricing-service (зона для тарифу). Маршрут будується за таблицею маршрутизації і розкладом рейсів; відповідь можна кешувати до зміни мережі. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] originLocationId (required):
  ///   Точка, де відправлення приймуть
  ///
  /// * [String] destinationLocationId (required):
  ///   Точка, де його видадуть
  ///
  /// * [DateTime] departAt:
  ///   Від якого моменту планувати; типово — зараз
  Future<Response> resolveRouteWithHttpInfo(String originLocationId, String destinationLocationId, { DateTime? departAt, }) async {
    // ignore: prefer_const_declarations
    final path = r'/internal/v1/network/routes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'originLocationId', originLocationId));
      queryParams.addAll(_queryParams('', 'destinationLocationId', destinationLocationId));
    if (departAt != null) {
      queryParams.addAll(_queryParams('', 'departAt', departAt));
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

  /// Маршрут і зона між двома точками
  ///
  /// Викликають shipment-service (запланований маршрут накладної, 6.2 `shipment_route`) і pricing-service (зона для тарифу). Маршрут будується за таблицею маршрутизації і розкладом рейсів; відповідь можна кешувати до зміни мережі. 
  ///
  /// Parameters:
  ///
  /// * [String] originLocationId (required):
  ///   Точка, де відправлення приймуть
  ///
  /// * [String] destinationLocationId (required):
  ///   Точка, де його видадуть
  ///
  /// * [DateTime] departAt:
  ///   Від якого моменту планувати; типово — зараз
  Future<NetworkRoute?> resolveRoute(String originLocationId, String destinationLocationId, { DateTime? departAt, }) async {
    final response = await resolveRouteWithHttpInfo(originLocationId, destinationLocationId,  departAt: departAt, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NetworkRoute',) as NetworkRoute;
    
    }
    return null;
  }
}
