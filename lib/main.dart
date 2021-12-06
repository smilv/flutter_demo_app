import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'package:flutter_demo_app/pages/home/home_page.dart';
import 'package:flutter_demo_app/pages/index_page.dart';

void main() {
  return runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: IndexPage());
  }
}
