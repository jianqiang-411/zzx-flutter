import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 40),
          RaisedButton(
              child: Text('跳转到登陆页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
              SizedBox(height: 40),
          RaisedButton(
              child: Text('跳转到注册页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/registerFirst');
              }),

        ]
      )
    );
  }
}