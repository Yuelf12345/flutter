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

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  ListView(
//       padding: const EdgeInsets.all(10),
//       children: const <Widget>[
//         ListTile(leading: Icon(Icons.home), title: Text('主页')),
//         Divider(),
//         ListTile(leading: Icon(Icons.assignment,color: Colors.red,), title: Text('订单')),
//         Divider(),
//         ListTile(leading: Icon(Icons.payment,color: Colors.green,), title: Text('待付款')),
//         Divider(),
//         ListTile(leading: Icon(Icons.favorite,color: Colors.lightGreen,),title: Text('收藏')),
//         Divider(),
//         ListTile(leading: Icon(Icons.people,color: Colors.black54,),title: Text('客服')),
//         Divider(),
//       ],
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(10),
//       children: <Widget>[
//         ListTile(
//           leading: Image.network(
//               'https://pics4.baidu.com/feed/71cf3bc79f3df8dc19e7fd7e10e1a48645102801.jpeg@f_auto?token=91e77fe931157d0c11adc10d55d9dd1c'),
//           title: const Text("“新型啃老”或已蔓延，很多家长并不知情，还到处炫耀儿女有出息"),
//           subtitle: const Text("2022-03-01 09:09:09"),
//         ),
//         ListTile(
//           title: const Text("“新型啃老”或已蔓延，很多家长并不知情，还到处炫耀儿女有出息"),
//           subtitle: const Text("2022-03-01 09:09:09"),
//           trailing: Image.network(
//               'https://pics4.baidu.com/feed/71cf3bc79f3df8dc19e7fd7e10e1a48645102801.jpeg@f_auto?token=91e77fe931157d0c11adc10d55d9dd1c'),
//         ),
//         ListTile(
//           leading: Image.network(
//               'https://pics4.baidu.com/feed/71cf3bc79f3df8dc19e7fd7e10e1a48645102801.jpeg@f_auto?token=91e77fe931157d0c11adc10d55d9dd1c'),
//           title: const Text("“新型啃老”或已蔓延，很多家长并不知情，还到处炫耀儿女有出息"),
//           subtitle: const Text("2022-03-01 09:09:09"),
//         )

//         // Image.network(
//         //     'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81'),
//         // Container(
//         //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//         //   height: 40,
//         //   child: const Text(
//         //     '标题1',
//         //     textAlign: TextAlign.center,
//         //     style: TextStyle(fontSize: 20, color: Colors.red),
//         //   ),
//         // ),
//         // Image.network(
//         //     'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81'),
//         // Container(
//         //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//         //   height: 40,
//         //   child: const Text(
//         //     '标题2',
//         //     textAlign: TextAlign.center,
//         //     style: TextStyle(fontSize: 20, color: Colors.red),
//         //   ),
//         // ),
//       ],
//     );
//   }
// }

// 水平列表
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal, //水平滚动
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
              width: 120,
              decoration: const BoxDecoration(color: Colors.pink),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Image.network(
                        'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81',fit: BoxFit.cover,),
                  ),
                  const Text('我是标题'),
                ],
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(color: Colors.yellow),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(color: Colors.orange),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(color: Colors.purple),
            ),
          ],
        ));
  }
}

