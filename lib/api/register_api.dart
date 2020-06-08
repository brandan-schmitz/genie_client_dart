part of makerspacegenie_client_dart.api;

class RegisterApi {
  final ApiClient apiClient;

  RegisterApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  ///
  Future createUserWithHttpInfo(User user) async {
    Object postBody = user;

    // verify required params are set
    if (user == null) {
      throw ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/register".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  ///
  ///
  ///
  Future createUser(User user) async {
    Response response = await createUserWithHttpInfo(user);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
