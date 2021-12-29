// @Description: 首页 page
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/1/21 4:24 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/1/21 4:24 PM

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '歌德老酒行',
        ),
        backgroundColor: Color(0xffA52815),
        brightness: Brightness.dark,
      ),
      body: Container(
        child: Text('首页'),
      ),
    );
  }
}
