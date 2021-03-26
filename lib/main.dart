import 'package:dcard_mock/Page/CardPick.dart';
import 'package:dcard_mock/Page/FollowList.dart';
import 'package:dcard_mock/Page/Home.dart';
import 'package:dcard_mock/Page/Personal.dart';
import 'package:flutter/material.dart';

import 'Page/Notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(color: Colors.blue),
            unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
          ),
          appBarTheme: AppBarTheme(color: Colors.blue[800]),
          tabBarTheme: TabBarTheme(
              indicator: ShapeDecoration(
                  shape: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0))),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white),
   ),
      home: PageNav(),
    );
  }
}

class PageNav extends StatefulWidget {
  const PageNav({
    Key key,
  }) : super(key: key);

  @override
  _PageNavState createState() => _PageNavState();
}

class _PageNavState extends State<PageNav> {
  int _selectedIndex = 0;
  final List<Widget> _page = <Widget>[
    Home(),
    FollowList(),
    // CardPick(),
    NotifiPage(),
    Personal()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "論壇"),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: "追蹤列表"),
          // BottomNavigationBarItem(icon: Icon(Icons.content_copy), label: "抽卡"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "通知"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "個人"),
        ],
      ),
    );
  }
}
