import 'package:flutter/material.dart';
import '../Search.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              print('history...');
            }),
        title: Container(
          padding: EdgeInsets.all(20),
          child: TabBar(
              controller: this._tabController,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(text: '我的'),
                Tab(text: '推荐'),
              ]),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 14, 10, 14),
            width: 74,
            child: FlatButton(

            color: Colors.white,
            onPressed: () {
              print('发帖子...');
            },
            child: Text('发帖子'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )),

        ],
      ),
      body: TabBarView(controller: this._tabController, children: [
        SearchPage(),
        Center(child: Text('推荐页面')),
      ]),
    );
  }
}
