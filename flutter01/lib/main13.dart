import 'package:flutter/material.dart';

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
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomeCom(),
    CategoryCom(),
    SettingCom()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        iconSize: 20,
        currentIndex: _currentIndex, // 默认选中
        onTap: (index) {
          // 打印
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置')
        ],
      ),
    );
  }
}


class HomeCom extends StatefulWidget {
  const HomeCom({super.key});

  @override
  State<HomeCom> createState() => _HomeComState();
}

class _HomeComState extends State<HomeCom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body:const Text('首页')
    );
  }
}

class CategoryCom extends StatefulWidget {
  const CategoryCom({super.key});

  @override
  State<CategoryCom> createState() => _CategoryComState();
}

class _CategoryComState extends State<CategoryCom> {
  @override
  Widget build(BuildContext context) {
    return const Text('分类');
  }
}

class SettingCom extends StatefulWidget {
  const SettingCom({super.key});

  @override
  State<SettingCom> createState() => _SettingComState();
}

class _SettingComState extends State<SettingCom> {
  @override
  Widget build(BuildContext context) {
    return const Text('设置');
  }
}