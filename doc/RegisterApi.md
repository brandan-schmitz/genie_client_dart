# genie_client_dart.api.RegisterApi

## Load the API package
```dart
import 'package:genie_client_dart/api.dart';
```

All URIs are relative to *https://genie-api-dev.celestialdata.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](RegisterApi.md#createUser) | **POST** /register | 


# **createUser**
> User createUser(user)



### Example 
```dart
import 'package:genie_client_dart/api.dart';

var api_instance = RegisterApi();
var user = User(); // User | 

try { 
    var result = api_instance.createUser(user);
    print(result);
} catch (e) {
    print("Exception when calling RegisterApi->createUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

