import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/secondPage.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Navigation Example',
      home: MyHomePage(),
      getPages:  [
         GetPage(name: "/ScreenTwo" , page: () => ScreenTwo()) ,
       ],
    );
  }
}
