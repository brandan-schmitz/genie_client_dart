part of genie_client_dart.api;

class PasswordResetApi {
  final ApiClient apiClient;

  PasswordResetApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  ///
  Future<http.Response> changePasswordWithHttpInfo(
      String token, String newPassword) async {
    Object postBody;

    // verify required params are set
    if (token == null) {
      throw ApiException(400, "Missing required param: token");
    }
    if (newPassword == null) {
      throw ApiException(400, "Missing required param: newPassword");
    }

    // create path and map variables
    String path = "/reset-password/{token}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "token" + "}", token.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "newPassword", newPassword));

    List<String> contentTypes = [];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      http.MultipartRequest mp = http.MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  ///
  ///
  ///
  Future<AnyType> changePassword(String token, String newPassword) async {
    http.Response response = await changePasswordWithHttpInfo(token, newPassword);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AnyType')
          as AnyType;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  ///
  Future requestTokenWithHttpInfo(String email) async {
    Object postBody;

    // verify required params are set
    if (email == null) {
      throw ApiException(400, "Missing required param: email");
    }

    // create path and map variables
    String path = "/reset-password".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "email", email));

    List<String> contentTypes = [];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      http.MultipartRequest mp = http.MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  ///
  ///
  ///
  Future requestToken(String email) async {
    http.Response response = await requestTokenWithHttpInfo(email);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
