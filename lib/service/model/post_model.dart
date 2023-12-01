class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({int? userId, int? id, String? title, String? body}) {
    if (userId != null) {
      userId = userId;
    }
    if (id != null) {
      id = id;
    }
    if (title != null) {
      title = title;
    }
    if (body != null) {
      body = body;
    }
  }

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}