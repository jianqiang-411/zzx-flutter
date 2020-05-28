import 'package:flutter/material.dart';

import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Publish.dart';
import 'tabs/Message.dart';
import 'tabs/My.dart';
import '../utility/Utility.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [HomePage(), CategoryPage(), null, MessagePage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter Demo'),
        // ),
        body: this._pageList[this._currentIndex],
        floatingActionButton: Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(top: 6),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.add, color: Colors.black, size: 36),
                onPressed: () {
                  showModalView(context, PublishPage());
                })),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            onTap: (index) {
              setState(() {
                if (index == 2) {
                  showModalView(context, PublishPage());
                } else {
                  this._currentIndex = index;
                }
              });
            },
            fixedColor: Theme.of(context).primaryColor,
            unselectedLabelStyle:
                TextStyle(color: Theme.of(context).accentColor),
            unselectedItemColor: Theme.of(context).accentColor,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.store_mall_directory), title: Text('江湖')),
              BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('发布')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), title: Text('消息')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), title: Text('我的'))
            ]),
      ),
    );
  }
}
