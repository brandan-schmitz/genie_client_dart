# makerspacegenie_client_dart.api.RegisterApi

## Load the API package
```dart
import 'package:makerspacegenie_client_dart/api.dart';
```

All URIs are relative to *https://genie-api.celestialdata.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](RegisterApi.md#createUser) | **POST** /register | 


# **createUser**
> createUser(user)



### Example 
```dart
import 'package:makerspacegenie_client_dart/api.dart';

var api_instance = RegisterApi();
var user = User(); // User | 

try { 
    api_instance.createUser(user);
} catch (e) {
    print("Exception when calling RegisterApi->createUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

