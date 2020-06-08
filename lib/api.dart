library makerspacegenie_client_dart.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/identity_api.dart';
part 'api/makerspace_api.dart';
part 'api/register_api.dart';
part 'api/user_api.dart';

part 'model/client.dart';
part 'model/inline_object.dart';
part 'model/inline_response200.dart';
part 'model/inline_response400.dart';
part 'model/inline_response403.dart';
part 'model/makerspace.dart';
part 'model/managed_auth_client.dart';
part 'model/managed_auth_token.dart';
part 'model/resource_owner.dart';
part 'model/user.dart';

ApiClient defaultApiClient = ApiClient();
