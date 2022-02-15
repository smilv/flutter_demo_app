// @Description: 分类 page
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/6/21 3:15 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/6/21 3:15 PM

/// todo: 左侧点击右侧滚动定位、右侧滚动左侧定位

import 'package:flutter/material.dart';

class SkuPage extends StatefulWidget {
  @override
  _SkuPageState createState() => _SkuPageState();
}

class _SkuPageState extends State<SkuPage> {
  int _activeIndex = 0;

  /// 右侧滚动控制器
  ScrollController _scrollController = ScrollController();

  /// 重写生命周期方法
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      print("监听滚动的位置 ${_scrollController.offset}");
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _scrollController.dispose();
    super.dispose();
  }

  /// 左侧点击
  void _leftTap(int index) {
    setState(() {
      _activeIndex = index;
    });
    _scrollController.animateTo(
      300.0,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
        brightness: Brightness.dark,
      ),
      body: Container(
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
                width: 90.0,
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
                child: ListView.builder(
                    itemCount: 20,
                    controller: _scrollController,
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

  ///左侧列表
  Widget _leftView(int index) {
    return GestureDetector(
      child: Container(
          margin: EdgeInsets.only(top: 18.0, bottom: 18.0),
          padding: EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          decoration: BoxDecoration(
              border: Border(
            left: BorderSide(
                width: 4.0,
                color:
                    _activeIndex == index ? Color(0xFFcc3e28) : Colors.white),
          )),
          child: Center(
            child: Text("飞天茅台$index",
                style: _activeIndex == index
                    ? TextStyle(color: Color(0xFFcc3e28))
                    : null),
          )),
      onTap: () {
        _leftTap(index);
      },
    );
  }

  ///右侧列表
  Widget _rightView(int index) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
            "http://gedevip.oss-cn-beijing.aliyuncs.com/images/4670443441584845205064.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
              margin: EdgeInsets.only(
                  top: 20.0, bottom: 8.0, left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "新品推荐$index",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 10.0,
                    children: [
                      Column(
                        children: [
                          Image.network(
                            "http://gedevip.oss-cn-beijing.aliyuncs.com/images/21426689171614150280148.png",
                            width: 58.0,
                            height: 58.0,
                          ),
                          Container(
                            width: 58.0,
                            margin: EdgeInsets.only(top: 4.0),
                            child:
                                Text("红星二锅头51度", textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )),
        ]));
  }
}
