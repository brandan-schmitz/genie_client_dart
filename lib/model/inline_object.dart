part of makerspacegenie_client_dart.api;

class InlineObject {
  String username = null;

  String password = null;

  String refreshToken = null;

  String code = null;

  String grantType = null;

  String scope = null;
  InlineObject();

  @override
  String toString() {
    return 'InlineObject[username=$username, password=$password, refreshToken=$refreshToken, code=$code, grantType=$grantType, scope=$scope, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username = json['username'];
    password = json['password'];
    refreshToken = json['refresh_token'];
    code = json['code'];
    grantType = json['grant_type'];
    scope = json['scope'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (username != null) json['username'] = username;
    if (password != null) json['password'] = password;
    if (refreshToken != null) json['refresh_token'] = refreshToken;
    if (code != null) json['code'] = code;
    if (grantType != null) json['grant_type'] = grantType;
    if (scope != null) json['scope'] = scope;
    return json;
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null
        ? List<InlineObject>()
        : json.map((value) => InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InlineObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject.listFromJson(value);
      });
    }
    return map;
  }
}
