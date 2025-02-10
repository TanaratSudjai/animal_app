import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_menu.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: Navbar(scaffoldKey: _scaffoldKey),
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
                Navigator.pushNamed(context, '/home'); // ไปยังหน้า Home
              },
            ),
            ListTile(
              title: Text('Me'),
              onTap: () {
                Navigator.pushNamed(context, '/me'); // ไปยังหน้า Me
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about'); // ไปยังหน้า About
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60, // กำหนดขนาดของวงกลม
              backgroundImage:
                  AssetImage('assets/rabbit.jpg'), // ใช้รูปจาก assets
            ),
            SizedBox(height: 10),
            Text(
              'กระต่ายโง่',
              style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: 25),
            ),
            Text(
              'กระต่ายสุขภาพดี เลี้ยงดูสะอาด เชื่อง ขี้อ้อน เหมาะสำหรับทุกวัย\n'
              'มีให้เลือกหลายสายพันธุ์ เช่น ฮอลแลนด์ลอป, ไลอ้อนเฮด, มินิเร็กซ์\n'
              'พร้อมอุปกรณ์เลี้ยง อาหาร และวัคซีนครบถ้วน',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center, // จัดข้อความให้อยู่ตรงกลาง
              softWrap: true, // ให้ข้อความตัดบรรทัดอัตโนมัติ
            ),
            SizedBox(height: 20),
            // แสดงดาว 5 ดาว
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: Colors.yellow, // เปลี่ยนสีดาว
                  size: 24, // ขนาดของดาว
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
