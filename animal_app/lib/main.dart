import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // หน้าแรกของแอป
    );
  }
}