import 'dart:convert';

List<Todo> todoFromJson(String str) {
  return List<Todo>.from(json.decode(str).map((x) {
    return Todo.fromJson(x);
  }));
}

String todoToJson(List<Todo> data) {
  return json.encode(List<dynamic>.from(data.map((x) {
    return x.toJson();
  })));
}

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  final int userId;
  final int id;
  final String title;
  final bool completed;

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
