import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
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
            ElevatedButton(
                child: const Text(
                  "Decrement",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  _controller.incrementValue();
                })
          ],
        ),
      ),
    );
  }
}
