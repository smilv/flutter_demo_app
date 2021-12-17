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
          // color: Colors.white,
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1.0, color: Color(0xFFEDEDED))),
            ),
            child: Container(
              height: 38.0,
              padding: EdgeInsets.only(left: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(19.0)),
                color: Color(0xffEDEDED),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xff535353),
                  ),
                  Text(
                    "茅台",
                    style: TextStyle(color: Color(0xff666666)),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 110.0,
                height: 100.0,
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          )
        ],
      )),
    );
  }
}
