// @Description: 购物车 page
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/6/21 3:17 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/6/21 3:17 PM

import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
        brightness: Brightness.dark,
      ),
      body: Container(
        child: Text('购物车'),
      ),
    );
  }
}
