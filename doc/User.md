# genie_client_dart.model.User

## Load the model package
```dart
import 'package:genie_client_dart/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **String** |  | [optional] [default to null]
**firstName** | **String** |  | [optional] [default to null]
**lastName** | **String** |  | [optional] [default to null]
**email** | **String** |  | [optional] [default to null]
**profilePictureUrl** | **String** |  | [optional] [default to null]
**id** | **int** | This is the primary identifier for this object.  | [optional] [default to null]
**username** | **String** | No two objects may have the same value for this field.  | [optional] [default to null]
**makerspacesOwned** | [**List&lt;Makerspace&gt;**](Makerspace.md) |  | [optional] [readonly] [default to []]
**tokens** | [**List&lt;ManagedAuthToken&gt;**](ManagedAuthToken.md) |  | [optional] [readonly] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


