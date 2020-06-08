part of genie_client_dart.api;

class InlineResponse403 {
  String error = null;
  /* The required scope for this operation. */
  String scope = null;
  InlineResponse403();

  @override
  String toString() {
    return 'InlineResponse403[error=$error, scope=$scope, ]';
  }

  InlineResponse403.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
    scope = json['scope'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (error != null) json['error'] = error;
    if (scope != null) json['scope'] = scope;
    return json;
  }

  static List<InlineResponse403> listFromJson(List<dynamic> json) {
    return json == null
        ? List<InlineResponse403>()
        : json.map((value) => InlineResponse403.fromJson(value)).toList();
  }

  static Map<String, InlineResponse403> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse403>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InlineResponse403.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse403-objects as value to a dart map
  static Map<String, List<InlineResponse403>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse403>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineResponse403.listFromJson(value);
      });
    }
    return map;
  }
}
