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
          label: 'Heart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Home clicked!')),
            );
            break;
          case 1:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Heart clicked!')),
            );
            break;
          case 2:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Settings clicked!')),
            );
            break;
        }
      },
    );
  }
}