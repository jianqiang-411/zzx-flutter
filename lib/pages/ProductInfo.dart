import 'package:flutter/material.dart';
import '../modals/Modal.dart';

class ProductInfoPage extends StatefulWidget {
  ProductInfoPage({Key key}) : super(key: key);

  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    final ProductInfo arguments = ModalRoute.of(context).settings.arguments;
    print('ProductInfoPage ${arguments.pid}');

    return Scaffold(
      appBar: AppBar(title: Text('商品详情页面')),
      body: Container(child: Text('我是商品详情页面${arguments.pid}')),
    );
  }
}
