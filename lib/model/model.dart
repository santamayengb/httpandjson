class TodoModel {
  String? userId;
  String? title;

  TodoModel({
    required this.userId,
    required this.title,
  });

  //map to object
  TodoModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    userId = json['userId'];
  }

  //object to map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'userId': userId,
    };
  }
}
