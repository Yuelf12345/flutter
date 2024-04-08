import 'package:flutter/material.dart';

void main() {
  //Center 居中 textDirection 文字方向
  // runApp(const Center(
  //   child: Text('Hello World',
  //       textDirection: TextDirection.ltr,
  //       style: TextStyle(fontSize: 40, color: Colors.red)),
  // ));

  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: const MyApp()),
  ));
}


// 自定义组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hello World,自定义组件',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 40, color: Colors.red)),
    );
  }
}
