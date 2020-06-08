part of makerspacegenie_client_dart.api;

class Makerspace {
  /* This is the primary identifier for this object.  */
  int id = null;

  String name = null;

  int primaryColor = null;

  int secondaryColor = null;

  String imageUrl = null;

  ResourceOwner owner = null;
  Makerspace();

  @override
  String toString() {
    return 'Makerspace[id=$id, name=$name, primaryColor=$primaryColor, secondaryColor=$secondaryColor, imageUrl=$imageUrl, owner=$owner, ]';
  }

  Makerspace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    primaryColor = json['primaryColor'];
    secondaryColor = json['secondaryColor'];
    imageUrl = json['imageUrl'];
    owner =
        (json['owner'] == null) ? null : ResourceOwner.fromJson(json['owner']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    if (name != null) json['name'] = name;
    if (primaryColor != null) json['primaryColor'] = primaryColor;
    if (secondaryColor != null) json['secondaryColor'] = secondaryColor;
    json['imageUrl'] = imageUrl;
    if (owner != null) json['owner'] = owner;
    return json;
  }

  static List<Makerspace> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Makerspace>()
        : json.map((value) => Makerspace.fromJson(value)).toList();
  }

  static Map<String, Makerspace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Makerspace>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Makerspace.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Makerspace-objects as value to a dart map
  static Map<String, List<Makerspace>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<Makerspace>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Makerspace.listFromJson(value);
      });
    }
    return map;
  }
}
