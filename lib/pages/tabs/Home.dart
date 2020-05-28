import 'package:flutter/material.dart';
import '../Search.dart';
import '../Form.dart';
import '../../modals/Modal.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  bool _showArrowDown = false;
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
    
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(() {

      print(_tabController.index);

      if (_tabController.index == 2) {
        setState(() {
          this._showArrowDown = true;
        });
      } else {
        setState(() {
          this._showArrowDown = false;
        });
      }
    });
  }

  Widget _showZoneChoseButton() {
      return Positioned(
          right: 6,
          child: InkWell(
            child: Icon(Icons.keyboard_arrow_down),
            onTap: () {
              print('选择地址');
            },
          ));
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
            // color: Colors.red,
            width: 160,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                TabBar(
                    controller: this._tabController,
                    isScrollable: true,
                    labelPadding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                    indicatorSize: TabBarIndicatorSize.label,
                    // indicator: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(2)
                    // ),
                    indicatorPadding: EdgeInsets.fromLTRB(10, -10, 10, 0),
                    indicatorColor: Colors.black,
                    tabs: <Widget>[
                      Tab(text: '关注'),
                      Tab(text: '首页'),
                      Tab(text: '扬州'),
                    ]
                    ),
                 this._showArrowDown ? this._showZoneChoseButton() : Text(''), 
              ],
              // 
            )),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(0, 14, 10, 14),
              width: 74,
              child: FlatButton(
                // color: Colors.white,
                onPressed: () {
                  print('签到...');
                },
                child: Text('签到'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
        ],
      ),
      body: TabBarView(controller: this._tabController, children: [
        Center(child: Text('关注页面')),
        Center(child: Text('首页页面')),
        Center(child: Text('选中地址页面')),
      ]),
    );
  }
    }