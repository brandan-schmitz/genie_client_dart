part of makerspacegenie_client_dart.api;

class ManagedAuthClient {
  /* This is the primary identifier for this object.  */
  String id = null;

  String hashedSecret = null;

  String salt = null;

  String redirectURI = null;

  String allowedScope = null;

  List<ManagedAuthToken> tokens = [];
  ManagedAuthClient();

  @override
  String toString() {
    return 'ManagedAuthClient[id=$id, hashedSecret=$hashedSecret, salt=$salt, redirectURI=$redirectURI, allowedScope=$allowedScope, tokens=$tokens, ]';
  }

  ManagedAuthClient.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    hashedSecret = json['hashedSecret'];
    salt = json['salt'];
    redirectURI = json['redirectURI'];
    allowedScope = json['allowedScope'];
    tokens = (json['tokens'] == null)
        ? null
        : ManagedAuthToken.listFromJson(json['tokens']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    json['hashedSecret'] = hashedSecret;
    json['salt'] = salt;
    json['redirectURI'] = redirectURI;
    json['allowedScope'] = allowedScope;
    json['tokens'] = tokens;
    return json;
  }

  static List<ManagedAuthClient> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ManagedAuthClient>()
        : json.map((value) => ManagedAuthClient.fromJson(value)).toList();
  }

  static Map<String, ManagedAuthClient> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ManagedAuthClient>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ManagedAuthClient.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ManagedAuthClient-objects as value to a dart map
  static Map<String, List<ManagedAuthClient>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ManagedAuthClient>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ManagedAuthClient.listFromJson(value);
      });
    }
    return map;
  }
}
