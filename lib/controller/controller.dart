import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:getx/views/views.dart';

class IncrementController extends GetxController {
  var value = 0;

  void incrementValue() {
    value++;
    update();
  }
}
// update uses: will update the count variable on ui which uses it.
