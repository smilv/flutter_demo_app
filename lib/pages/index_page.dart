// @Description: index page
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/3/21 4:27 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/3/21 4:27 PM

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/pages/home/home_page.dart';
import 'package:flutter_demo_app/pages/sku/sku_page.dart';
import 'package:flutter_demo_app/pages/shopping_cart/shopping_cart_page.dart';
import 'package:flutter_demo_app/pages/mine/mine_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationWidget();
  }
}

/// 底部导航
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final List tabBodies = [
    HomePage(),
    SkuPage(),
    ShoppingCartPage(),
    MinePage()
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

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
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: tabBodies[currentIndex],
    );
  }
}
