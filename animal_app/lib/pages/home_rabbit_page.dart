import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/navbar.dart';

class Homrabbit extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: Navbar(scaffoldKey: _scaffoldKey),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Colors.white,
              ],
            ),
          ),
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
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(16),
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            _buildRabbitCard(
              'บ้านกระต่ายขนาดเล็กสำหรับกระต่ายพันธุ์เล็ก',
              'assets/rabbit1.jpg',
              '฿1,500',
            ),
            _buildRabbitCard(
              'บ้านกระต่ายขนาดใหญ่สำหรับกระต่ายพันธุ์ใหญ่',
              'assets/rabbit2.jpg',
              '฿2,500',
            ),
            _buildRabbitCard(
              'บ้านกระต่ายพร้อมอุปกรณ์เสริม เช่น ที่นอนและที่กินน้ำ',
              'assets/rabbit3.jpg',
              '฿3,000',
            ),
            _buildRabbitCard(
              'บ้านกระต่าย Premium',
              'assets/rabbit4.jpg',
              '฿4,500',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }

  Widget _buildDrawerItem(
      BuildContext context, String title, IconData icon, String route) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF2C3E50)),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF2C3E50),
        ),
      ),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }

  Widget _buildRabbitCard(String title, String imagePath, String price) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Color(0xFFF8F9FA)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3498DB),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
