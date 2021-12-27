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
          Expanded(
            child: (Row(children: [
              Container(
                width: 100.0,
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(width: 1.0, color: Color(0xFFEDEDED)),
                )),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return _leftView(index);
                    }),
              ),
              Expanded(
                  child: Container(
                color: Colors.blue,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return _rightView(index);
                    }),
              )),
            ])),
          )
        ],
      )),
    );
  }

  Widget _leftView(int index) {
    return Container(
        margin: EdgeInsets.only(top: 18.0, bottom: 18.0),
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        decoration: BoxDecoration(
            border: Border(
          left: BorderSide(width: 4.0, color: Color(0xFFcc3e28)),
        )),
        child: Center(
          child: Text("飞天茅台",
              style: TextStyle(
                color: Color(0xFFcc3e28),
              )),
        ));
  }

  Widget _rightView(int index) {
    return Container(
        margin: EdgeInsets.all(16.0),
        child: Text(
          "飞天茅台飞天茅台台$index",
        ));
  }
}
