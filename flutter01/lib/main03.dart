import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter Bar'),
          backgroundColor: Colors.red,
        ),
        body: const Column(
          children: [
            MyApp(),
            SizedBox(height: 20),
            // Circular(),
            // SizedBox(height: 20),
            // ClipImage(),
            // SizedBox(height: 20),
            LocalImage(),
          ],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(
          'https://www.itying.com/themes/itying/images/ionic4.png',
          scale: 2,
          fit: BoxFit.cover,
        ) //网络图片
        );
  }
}

class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://www.itying.com/themes/itying/images/ionic4.png'),
              fit: BoxFit.cover),
        ));
  }
}

class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        'https://www.itying.com/themes/itying/images/ionic4.png',
        width: 200,
        height: 200,
        // scale: 2, //图片缩,
        fit: BoxFit.cover,
      ),
    );
  }
}

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Image.asset(
        'images/a.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}
