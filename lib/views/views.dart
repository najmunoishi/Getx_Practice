import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/controller.dart';

class IncrementScreen extends StatelessWidget {
  final _controller = Get.put(IncrementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //$ string interpulation.
            Obx(() => Text("The Value is ${_controller.value}")),
            GestureDetector(
                child: Text(
                  "count",
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  _controller.incrementValue();
                })
          ],
        ),
      ),
    );
  }
}
