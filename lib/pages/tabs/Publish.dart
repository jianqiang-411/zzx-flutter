import 'package:flutter/material.dart';

class PublishPage extends StatefulWidget {
  PublishPage({Key key}) : super(key: key);

  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                  ),
                  Container(
                    width: 300,
                    height: 200,
                    color: Colors.red,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Positioned(bottom: 40, child: InkWell(
              child: Icon(Icons.close),
              onTap: (){
                Navigator.pop(context);
              },
            )),
          ],
        ),
      ),
    );
  }
}

// Scaffold(
//         appBar: AppBar(
//           title: Text('发布页面'),
//           automaticallyImplyLeading: false, //隐藏返回按钮
//         ),
//         floatingActionButton: Container(
//           width: 50,
//           height: 50,
//           margin: EdgeInsets.only(bottom: 20),

//           child: FloatingActionButton(
//             elevation: 0,
//             // backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
//             child: Icon(
//               Icons.clear,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             })
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         body:
//         Center(
//           // color: Colors.white,
//           child: Column(children: <Widget>[
//           Text('我是发布页面'),
//         ])),
//         )
