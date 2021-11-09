import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Future<List> getData() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
  var res = await http.get(url);
  return jsonDecode(res.body);
  // var data = jsonDecode(res.body);
  // log(data[100]["title"].toString());
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List"),
        ),
        body: FutureBuilder<List>(
            future: getData(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data.toString()),
                    );
                  });
            }));
  }
}
