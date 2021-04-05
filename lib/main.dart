import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/src/views/ui/home.dart';
import 'package:flutter_application_1/src/views/ui/map.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Reader',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => Home(),
        'map' : (BuildContext context) => Map(),
      },
    );
  }
}