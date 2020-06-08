part of makerspacegenie_client_dart.api;

class User {
  String password = null;

  String firstName = null;

  String lastName = null;

  String email = null;

  String profilePictureUrl = null;
  /* This is the primary identifier for this object.  */
  int id = null;
  /* No two objects may have the same value for this field.  */
  String username = null;

  List<Makerspace> makerspacesOwned = [];

  List<ManagedAuthToken> tokens = [];
  User();

  @override
  String toString() {
    return 'User[password=$password, firstName=$firstName, lastName=$lastName, email=$email, profilePictureUrl=$profilePictureUrl, id=$id, username=$username, makerspacesOwned=$makerspacesOwned, tokens=$tokens, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    password = json['password'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    profilePictureUrl = json['profilePictureUrl'];
    id = json['id'];
    username = json['username'];
    makerspacesOwned = (json['makerspacesOwned'] == null)
        ? null
        : Makerspace.listFromJson(json['makerspacesOwned']);
    tokens = (json['tokens'] == null)
        ? null
        : ManagedAuthToken.listFromJson(json['tokens']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (password != null) json['password'] = password;
    if (firstName != null) json['firstName'] = firstName;
    if (lastName != null) json['lastName'] = lastName;
    if (email != null) json['email'] = email;
    json['profilePictureUrl'] = profilePictureUrl;
    if (id != null) json['id'] = id;
    if (username != null) json['username'] = username;
    json['makerspacesOwned'] = makerspacesOwned;
    json['tokens'] = tokens;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null
        ? List<User>()
        : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = User.listFromJson(value);
      });
    }
    return map;
  }
}
