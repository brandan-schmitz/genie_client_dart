# genie_client_dart.api.PasswordResetApi

## Load the API package
```dart
import 'package:genie_client_dart/api.dart';
```

All URIs are relative to *https://genie-api-dev.makerspacegenie.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](PasswordResetApi.md#changePassword) | **POST** /reset-password/{token} | 
[**requestToken**](PasswordResetApi.md#requestToken) | **POST** /reset-password | 


# **changePassword**
> changePassword(token, newPassword)



### Example 
```dart
import 'package:genie_client_dart/api.dart';

var api_instance = PasswordResetApi();
var token = token_example; // String | 
var newPassword = newPassword_example; // String | 

try { 
    api_instance.changePassword(token, newPassword);
} catch (e) {
    print("Exception when calling PasswordResetApi->changePassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | [default to null]
 **newPassword** | **String**|  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestToken**
> requestToken(email)



### Example 
```dart
import 'package:genie_client_dart/api.dart';

var api_instance = PasswordResetApi();
var email = email_example; // String | 

try { 
    api_instance.requestToken(email);
} catch (e) {
    print("Exception when calling PasswordResetApi->requestToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

