import 'package:flutter/material.dart';
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
      body: Center(
        child: Text('Home view'),
      ),
      bottomNavigationBar: NavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}