import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:getx/views/views.dart';

class RadioButtonController extends GetxController {
  //var value;
  Day? day = Day.Gd_Morning;
  //Day? d = Day.morning;
  String? oishi;

  void radioButton(Day v) {
    day = v;
    oishi = v.name;
    update();
  }
}
