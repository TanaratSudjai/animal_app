import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class AboutPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>(); // ✅ ใช้ ScaffoldState

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: Navbar(scaffoldKey: _scaffoldKey), // ✅ ส่งค่าให้ Navbar
      body: Center(
        child: Text(
          'About Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
