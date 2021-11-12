import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:httpandjsone/model/model.dart';

class Service {
  String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> getTodoList() async {
    final res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      log("Status Okay");

      // return Todo.fromJson(jsonDecode(res.body));

      final jsonData = res.body;

      return todoFromJson(jsonData);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
