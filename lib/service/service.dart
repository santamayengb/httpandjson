import 'dart:convert';

import 'package:http/http.dart' as http;

class Fetch {
  String baseUrl = "https://jsonplaceholder.typicode.com/todos";

  Future<List> getData() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        (response.statusCode);
        return jsonDecode(response.body);
      } else {
        return Future.error("Server error");
      }
    } catch (e) {
      return Future.error("Error");
    }
  }
}
