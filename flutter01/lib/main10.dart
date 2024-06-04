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
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('普通按钮')),
            TextButton(onPressed: () {}, child: const Text('文本按钮')),
            const OutlinedButton(onPressed: null, child: Text('边框按钮')),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.home),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.home),
              label: const Text('图标按钮'),
            ),
            TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.home),
              label: const Text('图标按钮'),
            ),
            OutlinedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.home),
              label: const Text('图标按钮'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 140,
              child: const ElevatedButton(
                onPressed: null,
                child: Text('大按钮'),
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(width: 1, color: Colors.red),
                  )),
                ),
                onPressed: () {},
                child: const Text('圆形'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
