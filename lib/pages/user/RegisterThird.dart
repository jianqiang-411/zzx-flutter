import 'package:flutter/material.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('注册-完成')),
        body: Column(children: <Widget>[
          Text('注册三'),
          SizedBox(height: 40),
          RaisedButton(
              child: Text('完成'),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => route==null);

              }),
        ]));
  }
}