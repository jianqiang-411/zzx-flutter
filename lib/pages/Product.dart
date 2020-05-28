import 'package:flutter/material.dart';
import '../modals/Modal.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品页面')),
      body: Container(
          child: RaisedButton(
              child: Text('跳转到商品详情页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/productInfo',
                    arguments: ProductInfo('456789'));
              })),
    );
  }
}
