class GetVersionsResponse {
  late Message message;

  GetVersionsResponse({required this.message});

  GetVersionsResponse.fromJson(Map<String, dynamic> json) {
    message = Message.fromJson(json['message']);
  }
}

class Message {
  Map<String, FrappeApp> frappeApps = {};

  Message.fromJson(Map<String, dynamic> json) {
    for (var entry in json.entries) {
        var k = entry.key;
        var v = entry.value;
        frappeApps[k] = FrappeApp.fromJson(v);
      }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    frappeApps.forEach((key, value) {
      data[key] = value.toJson();
    });
    return data;
  }
}

class FrappeApp {
  String? title;
  String? description;
  String? branch;
  String? branchVersion;
  String? version;

  FrappeApp(
      {this.title,
      this.description,
      this.branch,
      this.branchVersion,
      this.version});

  FrappeApp.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    branch = json['branch'];
    branchVersion = json['branch_version'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['branch'] = branch;
    data['branch_version'] = branchVersion;
    data['version'] = version;
    return data;
  }
}
