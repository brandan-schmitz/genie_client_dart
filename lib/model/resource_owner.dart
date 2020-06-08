part of makerspacegenie_client_dart.api;

class ResourceOwner {
  int id = null;
  ResourceOwner();

  @override
  String toString() {
    return 'ResourceOwner[id=$id, ]';
  }

  ResourceOwner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    return json;
  }

  static List<ResourceOwner> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ResourceOwner>()
        : json.map((value) => ResourceOwner.fromJson(value)).toList();
  }

  static Map<String, ResourceOwner> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResourceOwner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ResourceOwner.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceOwner-objects as value to a dart map
  static Map<String, List<ResourceOwner>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ResourceOwner>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ResourceOwner.listFromJson(value);
      });
    }
    return map;
  }
}
