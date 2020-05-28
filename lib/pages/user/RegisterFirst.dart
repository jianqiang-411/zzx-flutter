import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('注册-输入手机号')),
        body: Column(children: <Widget>[
          Text('注册一'),
          SizedBox(height: 40),
          RaisedButton(
              child: Text('下一步'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/registerSecond');
              }),
        ]));
  }
}
