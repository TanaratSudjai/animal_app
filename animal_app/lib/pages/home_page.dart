import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_menu.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // กำหนด key ให้กับ Scaffold
      appBar: Navbar(scaffoldKey: _scaffoldKey), // ส่ง key ไปยัง Navbar
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // ปิด Drawer
              },
            ),
            ListTile(
              title: Text('Me'),
              onTap: () {
                Navigator.pop(context); // ปิด Drawer
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context); // ปิด Drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
