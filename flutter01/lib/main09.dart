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
  List<Widget> initListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      //   list.add(const Card(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(10)),
      //     ),
      //     elevation: 10,
      //     child: Column(
      //       children: [
      //         ListTile(
      //           title: Text(
      //             "张三",
      //             style: TextStyle(fontSize: 28),
      //           ),
      //           subtitle: Text("前端开发工程师"),
      //         ),
      //         Divider(),
      //         ListTile(
      //           leading: Icon(Icons.phone_android),
      //           title: Text("电话: 1234567890"),
      //           subtitle: Text("地址: 杭州市西湖区"),
      //         )
      //       ],
      //     ),
      //   ));

      list.add(Card(
        margin: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 10,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 7,
              child: Image.network(
                  'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81',
                  fit: BoxFit.cover),
            ),
            const ListTile(
              // leading: ClipOval(
              //   child: Image.network(
              //     'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81',
              //     fit: BoxFit.cover,
              //     height: 40,
              //     width: 40,
              //   ),
              // ),
              leading: CircleAvatar(backgroundImage: NetworkImage('https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81'),),
              title: Text(
                "xxx",
              ),
              subtitle: Text("xxxxxxxxx"),
            )
          ],
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: initListData(),
    );
  }
}
