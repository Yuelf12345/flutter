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
      drawer: const Drawer(
          child: Column(
        children: [
          Row(
            children: [
              // UserInfo()
              Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                      accountName: Text(
                        "Deja Vu",
                        style: TextStyle(color: Colors.white),
                      ),
                      accountEmail: Text(
                        "2794127100@qq.com",
                        style: TextStyle(color: Colors.white),
                      ),
                      otherAccountsPictures: [
                        Image(image: NetworkImage('https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81'))
                      ],
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage('https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81'),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81')))))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Personal Center'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('System settings'),
          ),
        ],
      )),
      endDrawer: const Drawer(
        child: Text('right icon'),
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

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: DrawerHeader(
          decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img0.baidu.com/it/u=2067833172,1642959919&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1712854800&t=b3989401815a7d6da05d80e3f4cafe81'),
                ),
                title: Text(
                  'Deja Vu',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
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
