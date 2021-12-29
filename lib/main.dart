import 'package:flutter/material.dart';
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
          primaryColor: Color(0xff121212),
        ),
        home: IndexPage());
  }
}
