class TodoList {
  final List<TodoModel> todolist;

  TodoList(this.todolist);

  factory TodoList.fromJson(List<dynamic> parsedJson) {
    List<TodoModel> todolist;
    todolist = parsedJson.map((e) => TodoModel.fromJson(e)).toList();
    return TodoList(todolist);
  }
}

class TodoModel {
  String userId;
  String title;
  TodoModel({
    required this.userId,
    required this.title,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      TodoModel(userId: json["userId"], title: json["title"]);
}
