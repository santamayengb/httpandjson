import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    var res = await http.get(url);
    log(res.statusCode.toString());
  }

  void postData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    var res = await http.post(url, body: {
      "userId": "8232",
      "id": "8232",
      "title": "santa",
      "completed": "true"
    });
    log(res.body.toString());
  }

  @override
  void initState() {
    postData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Todos"),
      ),
    );
  }
}
