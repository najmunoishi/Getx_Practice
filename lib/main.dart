import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Radio_Button_Test_Getx",
      debugShowCheckedModeBanner: false,
      home: Button(),
    );
  }
}
