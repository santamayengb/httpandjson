import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/model.dart';

class Service {
  String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<TodoModel> getTodo() async {
    final res = await http.get(Uri.parse(url));

    return TodoModel.fromJson(jsonDecode(res.body));
  }
}
