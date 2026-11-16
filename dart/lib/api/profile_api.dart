//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of kite_contracts;


class ProfileApi {
  ProfileApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Зробити номер основним
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> activatePhoneWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/phones/{id}/activate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Зробити номер основним
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<CustomerPhone?> activatePhone(String id,) async {
    final response = await activatePhoneWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerPhone',) as CustomerPhone;
    
    }
    return null;
  }

  /// Додати улюблену точку
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FavoriteLocationRequest] favoriteLocationRequest (required):
  Future<Response> addFavoriteLocationWithHttpInfo(FavoriteLocationRequest favoriteLocationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/favorite-locations';

    // ignore: prefer_final_locals
    Object? postBody = favoriteLocationRequest;

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

  /// Додати улюблену точку
  ///
  /// Parameters:
  ///
  /// * [FavoriteLocationRequest] favoriteLocationRequest (required):
  Future<FavoriteLocation?> addFavoriteLocation(FavoriteLocationRequest favoriteLocationRequest,) async {
    final response = await addFavoriteLocationWithHttpInfo(favoriteLocationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FavoriteLocation',) as FavoriteLocation;
    
    }
    return null;
  }

  /// Додати номер (до трьох)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PhoneRequest] phoneRequest (required):
  Future<Response> addPhoneWithHttpInfo(PhoneRequest phoneRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/phones';

    // ignore: prefer_final_locals
    Object? postBody = phoneRequest;

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

  /// Додати номер (до трьох)
  ///
  /// Parameters:
  ///
  /// * [PhoneRequest] phoneRequest (required):
  Future<CustomerPhone?> addPhone(PhoneRequest phoneRequest,) async {
    final response = await addPhoneWithHttpInfo(phoneRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerPhone',) as CustomerPhone;
    
    }
    return null;
  }

  /// Підписка web push або FCM
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PushSubscriptionRequest] pushSubscriptionRequest (required):
  Future<Response> addPushSubscriptionWithHttpInfo(PushSubscriptionRequest pushSubscriptionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/push-subscriptions';

    // ignore: prefer_final_locals
    Object? postBody = pushSubscriptionRequest;

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

  /// Підписка web push або FCM
  ///
  /// Parameters:
  ///
  /// * [PushSubscriptionRequest] pushSubscriptionRequest (required):
  Future<PushSubscription?> addPushSubscription(PushSubscriptionRequest pushSubscriptionRequest,) async {
    final response = await addPushSubscriptionWithHttpInfo(pushSubscriptionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PushSubscription',) as PushSubscription;
    
    }
    return null;
  }

  /// Додати довірену особу
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrustedPersonRequest] trustedPersonRequest (required):
  Future<Response> addTrustedPersonWithHttpInfo(TrustedPersonRequest trustedPersonRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/trusted-persons';

    // ignore: prefer_final_locals
    Object? postBody = trustedPersonRequest;

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

  /// Додати довірену особу
  ///
  /// Parameters:
  ///
  /// * [TrustedPersonRequest] trustedPersonRequest (required):
  Future<TrustedPerson?> addTrustedPerson(TrustedPersonRequest trustedPersonRequest,) async {
    final response = await addTrustedPersonWithHttpInfo(trustedPersonRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrustedPerson',) as TrustedPerson;
    
    }
    return null;
  }

  /// Прибрати улюблену точку
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteFavoriteLocationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/favorite-locations/{id}'
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

  /// Прибрати улюблену точку
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteFavoriteLocation(String id,) async {
    final response = await deleteFavoriteLocationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Прибрати номер
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deletePhoneWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/phones/{id}'
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

  /// Прибрати номер
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deletePhone(String id,) async {
    final response = await deletePhoneWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Прибрати підписку
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deletePushSubscriptionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/push-subscriptions/{id}'
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

  /// Прибрати підписку
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deletePushSubscription(String id,) async {
    final response = await deletePushSubscriptionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Прибрати довірену особу
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteTrustedPersonWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/trusted-persons/{id}'
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

  /// Прибрати довірену особу
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteTrustedPerson(String id,) async {
    final response = await deleteTrustedPersonWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Профіль клієнта
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me';

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

  /// Профіль клієнта
  Future<Customer?> getMe() async {
    final response = await getMeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Customer',) as Customer;
    
    }
    return null;
  }

  /// Налаштування сповіщень
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getNotificationPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me/notification-preferences';

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

  /// Налаштування сповіщень
  Future<NotificationPreferences?> getNotificationPreferences() async {
    final response = await getNotificationPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationPreferences',) as NotificationPreferences;
    
    }
    return null;
  }

  /// Улюблені точки
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listFavoriteLocationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me/favorite-locations';

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

  /// Улюблені точки
  Future<List<FavoriteLocation>?> listFavoriteLocations() async {
    final response = await listFavoriteLocationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FavoriteLocation>') as List)
        .cast<FavoriteLocation>()
        .toList(growable: false);

    }
    return null;
  }

  /// Номери клієнта
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPhonesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me/phones';

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

  /// Номери клієнта
  Future<List<CustomerPhone>?> listPhones() async {
    final response = await listPhonesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CustomerPhone>') as List)
        .cast<CustomerPhone>()
        .toList(growable: false);

    }
    return null;
  }

  /// Довірені особи
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listTrustedPersonsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me/trusted-persons';

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

  /// Довірені особи
  Future<List<TrustedPerson>?> listTrustedPersons() async {
    final response = await listTrustedPersonsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrustedPerson>') as List)
        .cast<TrustedPerson>()
        .toList(growable: false);

    }
    return null;
  }

  /// Замінити налаштування сповіщень
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotificationPreferences] notificationPreferences (required):
  Future<Response> replaceNotificationPreferencesWithHttpInfo(NotificationPreferences notificationPreferences,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/notification-preferences';

    // ignore: prefer_final_locals
    Object? postBody = notificationPreferences;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Замінити налаштування сповіщень
  ///
  /// Parameters:
  ///
  /// * [NotificationPreferences] notificationPreferences (required):
  Future<NotificationPreferences?> replaceNotificationPreferences(NotificationPreferences notificationPreferences,) async {
    final response = await replaceNotificationPreferencesWithHttpInfo(notificationPreferences,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationPreferences',) as NotificationPreferences;
    
    }
    return null;
  }

  /// Перейменувати улюблену точку
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [FavoriteLocationPatch] favoriteLocationPatch (required):
  Future<Response> updateFavoriteLocationWithHttpInfo(String id, FavoriteLocationPatch favoriteLocationPatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/favorite-locations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = favoriteLocationPatch;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Перейменувати улюблену точку
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [FavoriteLocationPatch] favoriteLocationPatch (required):
  Future<FavoriteLocation?> updateFavoriteLocation(String id, FavoriteLocationPatch favoriteLocationPatch,) async {
    final response = await updateFavoriteLocationWithHttpInfo(id, favoriteLocationPatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FavoriteLocation',) as FavoriteLocation;
    
    }
    return null;
  }

  /// Змінити профіль, мову, тему, тиху годину
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ifMatch (required):
  ///   ETag версії, яку змінюємо
  ///
  /// * [CustomerPatch] customerPatch (required):
  Future<Response> updateMeWithHttpInfo(String ifMatch, CustomerPatch customerPatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/me';

    // ignore: prefer_final_locals
    Object? postBody = customerPatch;

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

  /// Змінити профіль, мову, тему, тиху годину
  ///
  /// Parameters:
  ///
  /// * [String] ifMatch (required):
  ///   ETag версії, яку змінюємо
  ///
  /// * [CustomerPatch] customerPatch (required):
  Future<Customer?> updateMe(String ifMatch, CustomerPatch customerPatch,) async {
    final response = await updateMeWithHttpInfo(ifMatch, customerPatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Customer',) as Customer;
    
    }
    return null;
  }

  /// Підтвердити номер кодом
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PhoneVerifyRequest] phoneVerifyRequest (required):
  Future<Response> verifyPhoneWithHttpInfo(String id, PhoneVerifyRequest phoneVerifyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/phones/{id}/verify'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = phoneVerifyRequest;

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

  /// Підтвердити номер кодом
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PhoneVerifyRequest] phoneVerifyRequest (required):
  Future<CustomerPhone?> verifyPhone(String id, PhoneVerifyRequest phoneVerifyRequest,) async {
    final response = await verifyPhoneWithHttpInfo(id, phoneVerifyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerPhone',) as CustomerPhone;
    
    }
    return null;
  }
}
