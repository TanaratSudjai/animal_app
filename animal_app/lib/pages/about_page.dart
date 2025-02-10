import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_menu.dart';

class AboutPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: Navbar(scaffoldKey: _scaffoldKey), // ใช้ Navbar
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 186, 214, 236)),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40, // กำหนดขนาดของวงกลม
                    backgroundImage:
                        AssetImage('assets/rabbit.jpg'), // ใช้รูปจาก assets
                  ),
                  SizedBox(height: 10),
                  Text(
                    'กระต่ายโง่',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Me'),
              onTap: () {
                Navigator.pushNamed(context, '/me');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "เกี่ยวกับร้านกระต่ายของเรา",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown, // ใช้สีที่ดูอบอุ่น
                  fontFamily: 'Arial', // ฟอนต์ที่เรียบง่ายและดูดี
                ),
              ),
              SizedBox(height: 20),
              Text(
                "ร้านกระต่ายของเรา ตั้งอยู่ที่",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontFamily: 'Arial',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "123/45 ถนนมิตรภาพ แขวงศรีนครินทร์ กรุงเทพฯ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors
                      .blueAccent, // ใช้สีฟ้าเพื่อให้ดูเป็นมิตรและเชื่อมโยงกับธุรกิจ
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.orange, // สีส้มที่สดใส
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "มาติดต่อเราตอนนี้!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomMenu(), // ใช้ Bottom Navigation Bar
    );
  }
}
