part of genie_client_dart.api;

class PasswordResetToken {
  /* This is the primary identifier for this object.  */
  int id = null;
  /* No two objects may have the same value for this field.  */
  String token = null;

  DateTime expiresOn = null;

  ResourceOwner associatedUser = null;
  PasswordResetToken();

  @override
  String toString() {
    return 'PasswordResetToken[id=$id, token=$token, expiresOn=$expiresOn, associatedUser=$associatedUser, ]';
  }

  PasswordResetToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    token = json['token'];
    expiresOn =
        (json['expiresOn'] == null) ? null : DateTime.parse(json['expiresOn']);
    associatedUser = (json['associatedUser'] == null)
        ? null
        : ResourceOwner.fromJson(json['associatedUser']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    if (token != null) json['token'] = token;
    if (expiresOn != null)
      json['expiresOn'] =
          expiresOn == null ? null : expiresOn.toUtc().toIso8601String();
    if (associatedUser != null) json['associatedUser'] = associatedUser;
    return json;
  }

  static List<PasswordResetToken> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PasswordResetToken>()
        : json.map((value) => PasswordResetToken.fromJson(value)).toList();
  }

  static Map<String, PasswordResetToken> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PasswordResetToken>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PasswordResetToken.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PasswordResetToken-objects as value to a dart map
  static Map<String, List<PasswordResetToken>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<PasswordResetToken>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = PasswordResetToken.listFromJson(value);
      });
    }
    return map;
  }
}
