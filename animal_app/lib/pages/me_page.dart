import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class MePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: Navbar(scaffoldKey: _scaffoldKey),
      body: Center(
        child: Text(
          'Me Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
