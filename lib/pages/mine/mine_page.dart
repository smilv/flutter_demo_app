// @Description: 我的 page
// @Author: zhaobin <zhaobin@googutspirits.com>
// @Date: 12/6/21 3:17 PM
// @LastEditors: zhaobin
// @LastEditTime: 12/6/21 3:17 PM

import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        brightness: Brightness.dark,
      ),
      body: Container(
        child: Text('我的'),
      ),
    );
  }
}
