import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Like',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.thumb_up_alt),
        //   label: 'Like',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'setting',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('กำลังไปที่หน้า รายการบ้านของกระต่าย...'),
                duration: Duration(
                    seconds: 2), // ตั้งเวลาให้แสดง SnackBar สัก 2 วินาที
              ),
            );
            Future.delayed(Duration(seconds: 2), () {
              // ignore: use_build_context_synchronously
              Navigator.pushNamed(context, '/home_rabbit'); // ไปยังหน้า Me
            });
            break;
          case 1:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Like clicked!')),
            );
            break;
          case 2:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Like clicked!')),
            );
            break;
          // case 3:
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text('Settings clicked!')),
          //   );
          //   break;
        }
      },
    );
  }
}
