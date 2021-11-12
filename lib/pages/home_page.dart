import 'package:httpandjsone/model/model.dart';

import '../service/service.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final Service _service;

  @override
  void initState() {
    super.initState();
    _service = Service();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(""),
      ),
      body: FutureBuilder<List<Todo>>(
        future: _service.getTodoList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;

            if (data == null) {
              return const Center(
                child: Text("No data"),
              );
            }
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final todo = data[index];

                return ListTile(title: Text(todo.title));
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
