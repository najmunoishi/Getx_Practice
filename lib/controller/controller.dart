import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:getx/views/views.dart';

class DecrementController extends GetxController {
  var value = 0.obs;

  void decrementValue() {
    value--;
  }
}
