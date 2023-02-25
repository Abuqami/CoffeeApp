import 'package:coffee/Experi.dart';
import 'package:coffee/Home.dart';
import 'package:coffee/ToggoleButtons.dart';
import 'package:flutter/material.dart';
import 'package:coffee/Landing_Page.dart';
import 'package:get/get.dart';
import 'bottomnavigationbar.dart';
import 'Order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

