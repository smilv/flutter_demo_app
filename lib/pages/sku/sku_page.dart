// @Description: 分类 page
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/6/21 3:15 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/6/21 3:15 PM

import 'package:flutter/material.dart';

class SkuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
      ),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(19.0)),
                color: Color(0xffEDEDED),
              ),
              child: Row(
                children: [],
              ),
            ),
          )
        ],
      )),
    );
  }
}
