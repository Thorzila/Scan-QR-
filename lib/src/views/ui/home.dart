import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/src/Controller/controllerUiGetX.dart';

import 'package:flutter_application_1/src/views/ui/maps.dart';
import 'package:flutter_application_1/src/views/ui/sitesUrls.dart';
import 'package:flutter_application_1/src/views/utils/navigationBar.dart';
import 'package:flutter_application_1/src/views/utils/scanButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever), 
            onPressed: (){}
          )
        ],
      ),
      body: _ViewSelected(),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _ViewSelected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerUi>(
      init: ControllerUi(),
      builder: (value){
        if(value.getIndex() == 0){
          return Maps();
        }else{
          return SitesUrls();
        }
      }
    );
  }
}