part of genie_client_dart.api;

class AuthApi {
  final ApiClient apiClient;

  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  ///
  Future<Response> grantWithHttpInfo(String grantType,
      {String username,
      String password,
      String refreshToken,
      String code,
      String scope}) async {
    Object postBody;

    // verify required params are set
    if (grantType == null) {
      throw ApiException(400, "Missing required param: grantType");
    }

    // create path and map variables
    String path = "/login".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["oauth2-client-authentication"];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (username != null) {
        hasFields = true;
        mp.fields['username'] = parameterToString(username);
      }
      if (password != null) {
        hasFields = true;
        mp.fields['password'] = parameterToString(password);
      }
      if (refreshToken != null) {
        hasFields = true;
        mp.fields['refresh_token'] = parameterToString(refreshToken);
      }
      if (code != null) {
        hasFields = true;
        mp.fields['code'] = parameterToString(code);
      }
      if (grantType != null) {
        hasFields = true;
        mp.fields['grant_type'] = parameterToString(grantType);
      }
      if (scope != null) {
        hasFields = true;
        mp.fields['scope'] = parameterToString(scope);
      }
      if (hasFields) postBody = mp;
    } else {
      if (username != null)
        formParams['username'] = parameterToString(username);
      if (password != null)
        formParams['password'] = parameterToString(password);
      if (refreshToken != null)
        formParams['refresh_token'] = parameterToString(refreshToken);
      if (code != null) formParams['code'] = parameterToString(code);
      if (grantType != null)
        formParams['grant_type'] = parameterToString(grantType);
      if (scope != null) formParams['scope'] = parameterToString(scope);
    }

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  ///
  ///
  ///
  Future<InlineResponse200> grant(String grantType,
      {String username,
      String password,
      String refreshToken,
      String code,
      String scope}) async {
    Response response = await grantWithHttpInfo(grantType,
        username: username,
        password: password,
        refreshToken: refreshToken,
        code: code,
        scope: scope);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }
}
