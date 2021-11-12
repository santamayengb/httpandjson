import 'package:httpandjsone/model/model.dart';

import '../service/service.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<TodoModel> futuretodos;

  @override
  void initState() {
    super.initState();
    futuretodos = Service().getTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(""),
      ),
    );
  }
}
