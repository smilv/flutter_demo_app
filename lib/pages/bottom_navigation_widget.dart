// @Description: 底部导航
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/3/21 4:27 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/3/21 4:27 PM

import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: '分类'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: '购物车'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: '我的'),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
      ),
    );
  }
}
