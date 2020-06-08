part of genie_client_dart.api;

class Client {
  String id = null;
  Client();

  @override
  String toString() {
    return 'Client[id=$id, ]';
  }

  Client.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    return json;
  }

  static List<Client> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Client>()
        : json.map((value) => Client.fromJson(value)).toList();
  }

  static Map<String, Client> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Client>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Client.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Client-objects as value to a dart map
  static Map<String, List<Client>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Client>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Client.listFromJson(value);
      });
    }
    return map;
  }
}
