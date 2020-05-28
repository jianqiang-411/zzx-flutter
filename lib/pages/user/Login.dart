import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('登陆页面')),
        body: Column(children: <Widget>[
          Text('我是登陆页面'),
          SizedBox(height: 40),
          Center(
            child: RaisedButton(
                child: Text('登陆'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          )
          
        ]));
  }
}
