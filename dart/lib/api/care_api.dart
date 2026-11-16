//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class CareApi {
  CareApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Дописати повідомлення в тікет
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [TicketMessageRequest] ticketMessageRequest (required):
  Future<Response> addTicketMessageWithHttpInfo(String id, TicketMessageRequest ticketMessageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/tickets/{id}/messages'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = ticketMessageRequest;

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

  /// Дописати повідомлення в тікет
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [TicketMessageRequest] ticketMessageRequest (required):
  Future<TicketMessage?> addTicketMessage(String id, TicketMessageRequest ticketMessageRequest,) async {
    final response = await addTicketMessageWithHttpInfo(id, ticketMessageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TicketMessage',) as TicketMessage;
    
    }
    return null;
  }

  /// Створити претензію
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CreateClaimRequest] createClaimRequest (required):
  Future<Response> createClaimWithHttpInfo(String idempotencyKey, CreateClaimRequest createClaimRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/claims';

    // ignore: prefer_final_locals
    Object? postBody = createClaimRequest;

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

  /// Створити претензію
  ///
  /// Parameters:
  ///
  /// * [String] idempotencyKey (required):
  ///   Обов'язковий для створення відправлень, платежів і дій з оплатою (9.1). Повтор із тим самим ключем повертає ту саму відповідь 24 години. 
  ///
  /// * [CreateClaimRequest] createClaimRequest (required):
  Future<Claim?> createClaim(String idempotencyKey, CreateClaimRequest createClaimRequest,) async {
    final response = await createClaimWithHttpInfo(idempotencyKey, createClaimRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Claim',) as Claim;
    
    }
    return null;
  }

  /// Отримати посилання для завантаження фото
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AttachmentRequest] attachmentRequest (required):
  Future<Response> createClaimAttachmentWithHttpInfo(String id, AttachmentRequest attachmentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/claims/{id}/attachments'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = attachmentRequest;

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

  /// Отримати посилання для завантаження фото
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AttachmentRequest] attachmentRequest (required):
  Future<UploadTicket?> createClaimAttachment(String id, AttachmentRequest attachmentRequest,) async {
    final response = await createClaimAttachmentWithHttpInfo(id, attachmentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UploadTicket',) as UploadTicket;
    
    }
    return null;
  }

  /// Створити тікет підтримки
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTicketRequest] createTicketRequest (required):
  Future<Response> createTicketWithHttpInfo(CreateTicketRequest createTicketRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/tickets';

    // ignore: prefer_final_locals
    Object? postBody = createTicketRequest;

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

  /// Створити тікет підтримки
  ///
  /// Parameters:
  ///
  /// * [CreateTicketRequest] createTicketRequest (required):
  Future<Ticket?> createTicket(CreateTicketRequest createTicketRequest,) async {
    final response = await createTicketWithHttpInfo(createTicketRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ticket',) as Ticket;
    
    }
    return null;
  }

  /// Мої претензії
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
  Future<Response> listClaimsWithHttpInfo({ int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/claims';

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

  /// Мої претензії
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  Future<ClaimPage?> listClaims({ int? limit, String? cursor, }) async {
    final response = await listClaimsWithHttpInfo( limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimPage',) as ClaimPage;
    
    }
    return null;
  }

  /// Мої тікети
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
  Future<Response> listTicketsWithHttpInfo({ int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tickets';

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

  /// Мої тікети
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Розмір сторінки
  ///
  /// * [String] cursor:
  ///   Курсор із `nextCursor` попередньої сторінки
  Future<TicketPage?> listTickets({ int? limit, String? cursor, }) async {
    final response = await listTicketsWithHttpInfo( limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TicketPage',) as TicketPage;
    
    }
    return null;
  }
}
