import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'URl'
        )
      ],
    );
  }
}