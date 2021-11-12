import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:httpandjsone/model/model.dart';

class Service {
  String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<Todo> getTodo() async {
    final res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      log("Status Okay");

      // return Todo.fromJson(jsonDecode(res.body));
      return Todo.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
