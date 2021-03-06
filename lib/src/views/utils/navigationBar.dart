import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/src/Controller/controllerUiGetX.dart';


class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerUi>(
      init: ControllerUi(),
      builder: (controller) => BottomNavigationBar(
        onTap: (int i) => controller.setIndex(i),
        currentIndex: controller.getIndex(),
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
      ),
    );
    
    
    /*BottomNavigationBar(
      currentIndex: 0,
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
    );*/
  }
}