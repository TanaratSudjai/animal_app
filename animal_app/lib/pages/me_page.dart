import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_menu.dart';

class MePage extends StatelessWidget {
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
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
                "ยินดีต้อนรับสู่ร้านกระต่ายของเรา",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown, // ใช้สีที่ดูอบอุ่น
                  fontFamily: 'Arial', // สามารถเปลี่ยนฟอนต์ได้ตามต้องการ
                ),
              ),
              SizedBox(height: 20),
              Text(
                "เรามีกระต่ายหลากหลายสายพันธุ์ พร้อมอุปกรณ์ครบครัน สำหรับคนรักกระต่ายทุกท่าน",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87, // สีดำที่ดูนุ่มนวล
                  fontFamily: 'Arial',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "มาร่วมเป็นส่วนหนึ่งกับเรา รับประกันคุณภาพและการดูแลที่ดีที่สุด",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green, // สีเขียวที่ทำให้รู้สึกสดชื่น
                  fontFamily: 'Arial',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.orange, // สีสดใส เพิ่มความดึงดูด
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "เริ่มต้นกับเราได้เลย!",
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
