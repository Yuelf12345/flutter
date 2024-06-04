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
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo Home Page'),
          ),
          body: const LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20), // 添加边距
        child: ListView(
          children: [
            Text('热搜', style: Theme.of(context).textTheme.titleLarge),
            Wrap(
              spacing: 10, // 水平间距
              runSpacing: 10, // 垂直间距
              // direction: Axis.horizontal, // 排列方向
              alignment: WrapAlignment.center, // 水平对齐方式
              children: [
                Button(text: 'Button1', onPressed: () => {}),
                Button(text: 'Button2', onPressed: () => {}),
                Button(text: 'Button3', onPressed: () => {}),
                Button(text: 'Button4', onPressed: () => {}),
                Button(text: 'Button5', onPressed: () => {}),
                Button(text: 'Button6', onPressed: () => {}),
                Button(text: 'Button7', onPressed: () => {}),
                Button(text: 'Button8', onPressed: () => {})
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text('历史记录', style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            const Divider(),
            const Column(
              children: [
                ListTile(title: Text('女装')),
                Divider(),
                ListTile(title: Text('女装')),
                Divider(),
                ListTile(title: Text('女装')),
                Divider()
              ],
            ),
            const SizedBox(height: 40),
            Padding(
                padding: const EdgeInsets.all(40),
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('清空历史记录'), Icon(Icons.delete)],
                    )))
          ],
        ));
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text; // 按钮文字
  void Function()? onPressed; // 点击事件
  Button({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(242, 255, 255, 1)),
        ),
        onPressed: onPressed,
        child: Text(text));
  }
}
