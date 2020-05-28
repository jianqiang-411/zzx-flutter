
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是搜索页面')
      ),
      // floatingActionButton: FloatingActionButton(
      //     child: Text('返回'),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     }),
      body: Center(
        child: 
           ListView(children: <Widget>[
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
      ]
      )
      ),
    );
  }
}
