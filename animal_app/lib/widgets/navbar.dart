import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState>
      scaffoldKey; // ✅ เปลี่ยนจาก Scaffold เป็น ScaffoldState

  Navbar({required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("กระต่ายโดนหมากิน"),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer(); // ✅ เปิด Drawer ได้
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
