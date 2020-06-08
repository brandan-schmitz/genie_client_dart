# genie_client_dart.api.IdentityApi

## Load the API package
```dart
import 'package:genie_client_dart/api.dart';
```

All URIs are relative to *https://genie-api-dev.celestialdata.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIdentity**](IdentityApi.md#getIdentity) | **GET** /me | 


# **getIdentity**
> getIdentity()



### Example 
```dart
import 'package:genie_client_dart/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = IdentityApi();

try { 
    api_instance.getIdentity();
} catch (e) {
    print("Exception when calling IdentityApi->getIdentity: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

