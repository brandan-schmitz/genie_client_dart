# makerspacegenie_client_dart.api.AuthApi

## Load the API package
```dart
import 'package:makerspacegenie_client_dart/api.dart';
```

All URIs are relative to *https://genie-api.celestialdata.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**grant**](AuthApi.md#grant) | **POST** /login | 


# **grant**
> InlineResponse200 grant(grantType, username, password, refreshToken, code, scope)



### Example 
```dart
import 'package:makerspacegenie_client_dart/api.dart';
// TODO Configure HTTP basic authorization: oauth2-client-authentication
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2-client-authentication').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('oauth2-client-authentication').password = 'YOUR_PASSWORD';

var api_instance = AuthApi();
var grantType = grantType_example; // String | 
var username = username_example; // String | 
var password = password_example; // String | 
var refreshToken = refreshToken_example; // String | 
var code = code_example; // String | 
var scope = scope_example; // String | 

try { 
    var result = api_instance.grant(grantType, username, password, refreshToken, code, scope);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->grant: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String**|  | [default to null]
 **username** | **String**|  | [optional] [default to null]
 **password** | **String**|  | [optional] [default to null]
 **refreshToken** | **String**|  | [optional] [default to null]
 **code** | **String**|  | [optional] [default to null]
 **scope** | **String**|  | [optional] [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[oauth2-client-authentication](../README.md#oauth2-client-authentication)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

