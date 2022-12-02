
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:statemanagement_shoppingcart/mycart.dart';

void main() => runApp( new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyCart(),

    );
  }
}