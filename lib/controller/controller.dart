import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:getx/views/views.dart';

class IncrementController extends GetxController {
  var value = 0.obs;

  void incrementValue() {
    value--;
  }
}
