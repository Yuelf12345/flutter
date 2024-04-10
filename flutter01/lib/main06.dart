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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> initListData() {
    List<Widget> list = [];
    for (var i = 0; i < listData.length; i++) {
      list.add(ListTile(
        leading: const Icon(Icons.home),
        title: Text("${listData[i]["title"]}"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //     padding: const EdgeInsets.all(10), children: initListData());

    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.home),
          title: Text("${listData[index]["title"]}"),
        );
      },
    );
  }
}

List listData = [
  {
    "title": "主页",
  },
  {
    "title": "订单",
  },
  {
    "title": "待付款",
  },
  {
    "icon": 'favorite',
    "title": "收藏",
  },
  {
    "title": "客服",
  }
];
