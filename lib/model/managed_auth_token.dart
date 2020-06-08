part of genie_client_dart.api;

class ManagedAuthToken {
  /* This is the primary identifier for this object.  */
  int id = null;
  /* No two objects may have the same value for this field.  */
  String code = null;
  /* No two objects may have the same value for this field.  */
  String accessToken = null;
  /* No two objects may have the same value for this field.  */
  String refreshToken = null;

  String scope = null;

  DateTime issueDate = null;

  DateTime expirationDate = null;

  String type = null;

  ResourceOwner resourceOwner = null;

  Client client = null;
  ManagedAuthToken();

  @override
  String toString() {
    return 'ManagedAuthToken[id=$id, code=$code, accessToken=$accessToken, refreshToken=$refreshToken, scope=$scope, issueDate=$issueDate, expirationDate=$expirationDate, type=$type, resourceOwner=$resourceOwner, client=$client, ]';
  }

  ManagedAuthToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    code = json['code'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    scope = json['scope'];
    issueDate =
        (json['issueDate'] == null) ? null : DateTime.parse(json['issueDate']);
    expirationDate = (json['expirationDate'] == null)
        ? null
        : DateTime.parse(json['expirationDate']);
    type = json['type'];
    resourceOwner = (json['resourceOwner'] == null)
        ? null
        : ResourceOwner.fromJson(json['resourceOwner']);
    client = (json['client'] == null) ? null : Client.fromJson(json['client']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    json['code'] = code;
    json['accessToken'] = accessToken;
    json['refreshToken'] = refreshToken;
    json['scope'] = scope;
    if (issueDate != null)
      json['issueDate'] =
          issueDate == null ? null : issueDate.toUtc().toIso8601String();
    if (expirationDate != null)
      json['expirationDate'] = expirationDate == null
          ? null
          : expirationDate.toUtc().toIso8601String();
    json['type'] = type;
    if (resourceOwner != null) json['resourceOwner'] = resourceOwner;
    if (client != null) json['client'] = client;
    return json;
  }

  static List<ManagedAuthToken> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ManagedAuthToken>()
        : json.map((value) => ManagedAuthToken.fromJson(value)).toList();
  }

  static Map<String, ManagedAuthToken> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ManagedAuthToken>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ManagedAuthToken.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ManagedAuthToken-objects as value to a dart map
  static Map<String, List<ManagedAuthToken>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ManagedAuthToken>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ManagedAuthToken.listFromJson(value);
      });
    }
    return map;
  }
}
