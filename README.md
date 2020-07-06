# genie_client_dart
An aqueduct API for the makerspacegenie mobile app created by Dillon Shaffer

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1.5
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  genie_client_dart:
    git: https://github.com/brandan-schmitz/genie_client_dart.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  genie_client_dart:
    path: /path/to/genie_client_dart
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:genie_client_dart/api.dart';

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

## Documentation for API Endpoints

All URIs are relative to *https://genie-api-dev.celestialdata.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthApi* | [**grant**](doc//AuthApi.md#grant) | **POST** /login | 
*IdentityApi* | [**getIdentity**](doc//IdentityApi.md#getidentity) | **GET** /me | 
*MakerspaceApi* | [**createMakerspace**](doc//MakerspaceApi.md#createmakerspace) | **POST** /makerspace | 
*MakerspaceApi* | [**deleteMakerspace**](doc//MakerspaceApi.md#deletemakerspace) | **DELETE** /makerspace/{id} | 
*MakerspaceApi* | [**getAllMakerspaces**](doc//MakerspaceApi.md#getallmakerspaces) | **GET** /makerspace | 
*MakerspaceApi* | [**getMakerspace**](doc//MakerspaceApi.md#getmakerspace) | **GET** /makerspace/{id} | 
*MakerspaceApi* | [**updateMakerspace**](doc//MakerspaceApi.md#updatemakerspace) | **PATCH** /makerspace/{id} | 
*RegisterApi* | [**createUser**](doc//RegisterApi.md#createuser) | **POST** /register | 
*UserApi* | [**deleteUser**](doc//UserApi.md#deleteuser) | **DELETE** /users/{id} | 
*UserApi* | [**getAllUsers**](doc//UserApi.md#getallusers) | **GET** /users | 
*UserApi* | [**getUser**](doc//UserApi.md#getuser) | **GET** /users/{id} | 
*UserApi* | [**updateUser**](doc//UserApi.md#updateuser) | **PATCH** /users/{id} | 


## Documentation For Models

 - [Client](doc//Client.md)
 - [InlineObject](doc//InlineObject.md)
 - [InlineResponse200](doc//InlineResponse200.md)
 - [InlineResponse400](doc//InlineResponse400.md)
 - [InlineResponse403](doc//InlineResponse403.md)
 - [Makerspace](doc//Makerspace.md)
 - [ManagedAuthClient](doc//ManagedAuthClient.md)
 - [ManagedAuthToken](doc//ManagedAuthToken.md)
 - [ResourceOwner](doc//ResourceOwner.md)
 - [User](doc//User.md)


## Documentation For Authorization


## oauth2

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: N/A

## oauth2-client-authentication

- **Type**: HTTP basicc authentication


## Author

brandan.schmitz@celestialdata.net


