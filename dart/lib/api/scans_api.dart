//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ScansApi {
  ScansApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Сортувальна підказка
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hubId (required):
  ///
  /// * [String] barcode (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<Response> getSortHintWithHttpInfo(String hubId, String barcode, { String? acceptLanguage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ops/hubs/{hubId}/sort-hint/{barcode}'
      .replaceAll('{hubId}', hubId)
      .replaceAll('{barcode}', barcode);

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

  /// Сортувальна підказка
  ///
  /// Parameters:
  ///
  /// * [String] hubId (required):
  ///
  /// * [String] barcode (required):
  ///
  /// * [String] acceptLanguage:
  ///   Мова людських описів статусів
  Future<SortHint?> getSortHint(String hubId, String barcode, { String? acceptLanguage, }) async {
    final response = await getSortHintWithHttpInfo(hubId, barcode,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SortHint',) as SortHint;
    
    }
    return null;
  }

  /// Пакет сканів (до 100)
  ///
  /// Приймає scan-service. Ідемпотентність — за `scanId`, згенерованим на телефоні; повтор того самого `scanId` повертає попередній результат. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ScanBatch] scanBatch (required):
  Future<Response> submitScansWithHttpInfo(ScanBatch scanBatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/scans';

    // ignore: prefer_final_locals
    Object? postBody = scanBatch;

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

  /// Пакет сканів (до 100)
  ///
  /// Приймає scan-service. Ідемпотентність — за `scanId`, згенерованим на телефоні; повтор того самого `scanId` повертає попередній результат. 
  ///
  /// Parameters:
  ///
  /// * [ScanBatch] scanBatch (required):
  Future<ScanBatchResult?> submitScans(ScanBatch scanBatch,) async {
    final response = await submitScansWithHttpInfo(scanBatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScanBatchResult',) as ScanBatchResult;
    
    }
    return null;
  }
}
