import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 去掉右上角debug
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // 生命周期函数
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: list.length, vsync: this);
  }

  List<String> list = ['Tab1', 'Tab2', 'Tab3', 'Tab4', 'Tab5','Tab6','Tab7','Tab8'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  print('点击了左侧按钮');
                },
                icon: const Icon(Icons.menu)),
            backgroundColor: Colors.orange,
            title: const Text('left icon'),
            actions: [
              IconButton(
                  onPressed: () {
                    print('search');
                  },
                  icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    print('more');
                  },
                  icon: const Icon(Icons.more_horiz))
            ],
            bottom: TabBar(
                isScrollable: true, //
                indicatorColor: Colors.white, // 选中颜色
                // indicatorSize: TabBarIndicatorSize.label, // 选中大小
                indicatorWeight: 2, // 选中高度
                indicatorPadding: const EdgeInsets.all(5), // 选中边距
                indicator: BoxDecoration(
                    color: Colors.red, 
                    borderRadius: BorderRadius.circular(10)
                    ),
                controller: _tabController, // 监听
                tabs: list.map((String e) {
                  return Tab(text: e);
                }).toList()),
          ),
          body: TabBarView(
            controller: _tabController,
            children: list.map((String e) {
              return Center(child: Text('there is $e'));
            }).toList(),
          ),
        ));
  }
}
