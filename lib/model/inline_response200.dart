part of genie_client_dart.api;

class InlineResponse200 {
  String accessToken = null;

  String tokenType = null;

  int expiresIn = null;

  String refreshToken = null;

  String scope = null;
  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[accessToken=$accessToken, tokenType=$tokenType, expiresIn=$expiresIn, refreshToken=$refreshToken, scope=$scope, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    refreshToken = json['refresh_token'];
    scope = json['scope'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (accessToken != null) json['access_token'] = accessToken;
    if (tokenType != null) json['token_type'] = tokenType;
    if (expiresIn != null) json['expires_in'] = expiresIn;
    if (refreshToken != null) json['refresh_token'] = refreshToken;
    if (scope != null) json['scope'] = scope;
    return json;
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null
        ? List<InlineResponse200>()
        : json.map((value) => InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse200>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InlineResponse200.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse200-objects as value to a dart map
  static Map<String, List<InlineResponse200>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse200>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineResponse200.listFromJson(value);
      });
    }
    return map;
  }
}
