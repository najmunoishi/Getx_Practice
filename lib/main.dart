import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/views/views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx_Reactive_Approch",
      debugShowCheckedModeBanner: false,
      home: IncrementScreen(),
    );
  }
}
