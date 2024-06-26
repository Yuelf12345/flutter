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
  final List<Widget> _pages = const [HomeCom(), CategoryCom(), SettingCom()];

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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ]),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1 ? Colors.red : Colors.blue,
          onPressed: () {
            // print('点击了按钮');
            setState(() {
              _currentIndex = 1;
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // 浮动按钮位置
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
          title: const Text('Home'),
        ),
        body: const Text('Home'));
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
    return const Text('Category');
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
    return const Text('Setting');
  }
}
