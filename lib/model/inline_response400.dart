part of makerspacegenie_client_dart.api;

class InlineResponse400 {
  String error = null;
  InlineResponse400();

  @override
  String toString() {
    return 'InlineResponse400[error=$error, ]';
  }

  InlineResponse400.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (error != null) json['error'] = error;
    return json;
  }

  static List<InlineResponse400> listFromJson(List<dynamic> json) {
    return json == null
        ? List<InlineResponse400>()
        : json.map((value) => InlineResponse400.fromJson(value)).toList();
  }

  static Map<String, InlineResponse400> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse400>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InlineResponse400.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse400-objects as value to a dart map
  static Map<String, List<InlineResponse400>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse400>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineResponse400.listFromJson(value);
      });
    }
    return map;
  }
}
