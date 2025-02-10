import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/me_page.dart';
import 'pages/about_page.dart';
import 'pages/home_rabbit_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/me': (context) => MePage(),
        '/about': (context) => AboutPage(),
        '/home_rabbit': (context) => Homrabbit(),
      },
    );
  }
}
