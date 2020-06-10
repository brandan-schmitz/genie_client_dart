# genie_client_dart.api.MakerspaceApi

## Load the API package
```dart
import 'package:genie_client_dart/api.dart';
```

All URIs are relative to *https://genie-api-dev.celestialdata.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMakerspace**](MakerspaceApi.md#createMakerspace) | **POST** /makerspace | 
[**deleteMakerspace**](MakerspaceApi.md#deleteMakerspace) | **DELETE** /makerspace/{id} | 
[**getAllMakerspaces**](MakerspaceApi.md#getAllMakerspaces) | **GET** /makerspace | 
[**getMakerspace**](MakerspaceApi.md#getMakerspace) | **GET** /makerspace/{id} | 
[**updateMakerspace**](MakerspaceApi.md#updateMakerspace) | **PATCH** /makerspace/{id} | 


# **createMakerspace**
> Makerspace createMakerspace(makerspace)



### Example 
```dart
import 'package:genie_client_dart/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MakerspaceApi();
var makerspace = Makerspace(); // Makerspace | 

try { 
    var result = api_instance.createMakerspace(makerspace);
    print(result);
} catch (e) {
    print("Exception when calling MakerspaceApi->createMakerspace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **makerspace** | [**Makerspace**](Makerspace.md)|  | 

### Return type

[**Makerspace**](Makerspace.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMakerspace**
> deleteMakerspace(id)



### Example 
```dart
import 'package:genie_client_dart/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MakerspaceApi();
var id = 56; // int | 

try { 
    api_instance.deleteMakerspace(id);
} catch (e) {
    print("Exception when calling MakerspaceApi->deleteMakerspace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMakerspaces**
> Makerspace getAllMakerspaces()



### Example 
```dart
import 'package:genie_client_dart/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MakerspaceApi();

try { 
    var result = api_instance.getAllMakerspaces();
    print(result);
} catch (e) {
    print("Exception when calling MakerspaceApi->getAllMakerspaces: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Makerspace**](Makerspace.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMakerspace**
> Makerspace getMakerspace(id)



### Example 
```dart
import 'package:genie_client_dart/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MakerspaceApi();
var id = 56; // int | 

try { 
    var result = api_instance.getMakerspace(id);
    print(result);
} catch (e) {
    print("Exception when calling MakerspaceApi->getMakerspace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]

### Return type

[**Makerspace**](Makerspace.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMakerspace**
> Makerspace updateMakerspace(id, makerspace)



### Example 
```dart
import 'package:genie_client_dart/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MakerspaceApi();
var id = 56; // int | 
var makerspace = Makerspace(); // Makerspace | 

try { 
    var result = api_instance.updateMakerspace(id, makerspace);
    print(result);
} catch (e) {
    print("Exception when calling MakerspaceApi->updateMakerspace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]
 **makerspace** | [**Makerspace**](Makerspace.md)|  | 

### Return type

[**Makerspace**](Makerspace.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

