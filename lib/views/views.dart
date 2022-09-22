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
            GetBuilder<IncrementController>(
              init: IncrementController(),
              builder: (controller) {
                return Text(
                  "The Value is ${controller.value}",
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            ElevatedButton(
                child: const Text(
                  "Increment",
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
