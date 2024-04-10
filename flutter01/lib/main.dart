import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Demo Home Page'),
            ),
            body: const MyHomePage()));
  }
}

List<String> colors = ['red', 'green', 'blue', 'yellow', 'pink', 'orange'];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> initListData() {
    List<Widget> list = [];
    for (var i = 0; i < 6; i++) {
      list.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: Text("$i"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //列数
      mainAxisSpacing: 10, //行间距
      crossAxisSpacing: 10, //列间距
      childAspectRatio: 0.7, //宽高比
      children: initListData(),
    );
  }
}
