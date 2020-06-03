import 'package:flutter/material.dart';
import 'pages/index_page.dart';
import 'pages/top_common_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20.0);
    return MaterialApp(
      title: '仿网易云音乐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'PingFang',
      ),
      home: TabNavigator(),
    );
  }
}
