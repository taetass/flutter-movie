import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screen/t_page.dart';
import 'package:flutter_application/screen/w_page.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import '../main.dart';
import 'd_page.dart';



class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageConteoller = PageController(initialPage: 0);
  int _currentPageIndex = 0;
  List<StatefulWidget> pages = [
    MyHomePage(),
    Tpage(
      pageName: 'หน้า 2',
    ),
    Wpage(
      wpageName: 'หน้า 3',
    ),
    Dpage(
      dpageName: 'หน้า 4',
    ),
    Tpage(
      pageName: 'หน้า 5',
    ),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
      pageConteoller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiLevelDrawer(
        backgroundColor: Colors.white,
        rippleColor: Colors.yellow,
        subMenuBackgroundColor: Colors.grey.shade100,
        header: Container(
          //height: Size.height * 0.25,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Image.asset("images/tae2.jpg"),
              SizedBox(
                height: 10,
              ),
              Text("Tassaneewan Wongwai"),
            ],
          )),
        ),
        children: [
          MLMenuItem(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "My Profile",
              ),
              onClick: () {}
          ),
          MLMenuItem(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_right),
              content: Text("Settings"),
              onClick: () {},
          ),
          MLMenuItem(
            leading: Icon(Icons.notifications),
            content: Text("Notifications"),
            onClick: () {},
          ),
          MLMenuItem(
              leading: Icon(Icons.payment),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "Payments",
              ),
              onClick: _onPageChanged
              ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Flutter'),
      ),
      body: PageView(
        controller: pageConteoller,
        children: pages,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.lightGreen,
        backgroundColor: Colors.yellow,
        buttonBackgroundColor: Colors.teal,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.add,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.list,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.favorite,
            size: 20,
            color: Colors.black,
          ),
        ],
        animationDuration: Duration(milliseconds: 200),
        index: _currentPageIndex,
        animationCurve: Curves.bounceInOut,
        onTap: _onPageChanged,
      ),
    );
  }
}
