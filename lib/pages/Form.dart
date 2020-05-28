import 'package:flutter/material.dart';
import '../modals/Modal.dart';


class FormPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //获取路由参数  
    final ScreenArguments arguments = ModalRoute.of(context).settings.arguments;
    print('dddd ${arguments.id}');

    // final arguments = ModalRoute.of(context).settings.arguments;
    // print('dddd $arguments');


    return Scaffold(
      appBar:
          AppBar(title: Text("表单-${arguments != null ? arguments.id : '0'}")),
      body: ListView(children: <Widget>[
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
        ListTile(title: Text('我是表单页面')),
      ]),
    );
  }
}
