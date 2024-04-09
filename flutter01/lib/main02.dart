import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter Bar'),
          backgroundColor: Colors.red,
        ),
        body: const Column(
          children: [MyApp(), MyButton()],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center, //居中
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.blue,
          width: 10,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50)), //圆角
        boxShadow: const [
          //阴影
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 5,
          )
        ],
      ),
      child: const Text('你好flutter',
          style: TextStyle(fontSize: 20, color: Colors.white)),
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center, //居中
      width: 200,
      height: 100,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0), //外边距
      transform: Matrix4.translationValues(40, 0, 0), //移动
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "按钮",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
