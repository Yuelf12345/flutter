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
    // return Padding(
    //     padding: const EdgeInsets.all(20),
    //     child: IconWidget(icon: Icons.home, color: Colors.red));

    // return Container(
    //     width: double.infinity, // 设置为父元素宽度
    //     height: double.infinity,
    //     color: Colors.grey,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 排序方式
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         IconWidget(icon: Icons.home, color: Colors.red),
    //         IconWidget(icon: Icons.search, color: Colors.yellow),
    //         IconWidget(icon: Icons.settings, color: Colors.blue),
    //         // Expanded(  // 占满剩余空间
    //         //   flex: 1,
    //         //   child: IconWidget(icon: Icons.home, color: Colors.red),
    //         // ),
    //       ],
    //     ));

// 重叠
    // return Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Container(
    //       width: 300,
    //       height: 200,
    //       color: Colors.red,
    //     ),
    //     Container(
    //       width: 100,
    //       height: 100,
    //       color: Colors.yellow,
    //     ),
    //     const Text('hello')
    //   ],
    // );

// 相对定位
    // return Container(
    //   width: 300,
    //   height: 400,
    //   color: Colors.grey,
    //   child: Stack(
    //     children: [
    //       Positioned(
    //         bottom: 0,
    //         left: 0,
    //         child: Container(
    //           width: 100,
    //           height: 100,
    //           color: Colors.red,
    //         ),
    //       ),
    //       const Positioned(top: 0, right: 0, child: Text('hello'))
    //     ],
    //   ),
    // );

// 浮动导航
    List<Widget> initListData() {
      List<Widget> list = [];
      for (var i = 0; i < 20; i++) {
        list.add(ListTile(
          leading: const Icon(Icons.home),
          title: Text("我是第$i个列表"),
        ));
      }
      return list;
    }

    final size = MediaQuery.of(context).size; //  获取设备宽高
    return Stack(
      children: [
        ListView(
            padding: const EdgeInsets.only(top: 50), children: initListData()),
        Positioned(
            top: 0,
            left: 0,
            width: size.width,
            height: 44,
            // child: Row(
            //   children: [
            //     Expanded(
            //         flex: 1,
            //         child: Container(
            //           alignment: Alignment.center,
            //           height: 44,
            //           color: Colors.red,
            //           child: const Text(
            //             '二级导航',
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ))
            //   ],
            // ))
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: const Text(
                '二级导航',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ],
    );
  }
}

// ignore: must_be_immutable
class IconWidget extends StatelessWidget {
  Color color;
  IconData icon;

  IconWidget({required this.color, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      alignment: Alignment.center,
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
