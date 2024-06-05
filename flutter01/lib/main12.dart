import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage2());
  }
}

class HomePage extends StatelessWidget {
  int count = 0;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Center(
        child: Column(
          children: [
            Text("$count"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  count + 1;
                },
                child: const Text('增加'))
          ],
        ),
      ),
    );
  }
}

// 继承StatefulWidget的状态组件
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                list.add("我是一个新增列表");
              });
            },
            child: const Icon(Icons.add)),
        body: ListView(
          children: list.map((e) {
            return ListTile(
              title: Text(e),
            );
          }).toList(),
        ));
  }
}
