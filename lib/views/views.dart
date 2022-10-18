import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/controller.dart';

enum Day { Gd_Morning, Gd_Evening, Gd_Night }

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  //String? day;
  //Day? d = Day.morning;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GetBuilder<RadioButtonController>(
                init: RadioButtonController(),
                builder: (contro) {
                  return Column(
                    children: [
                      /*RadioListTile(
                        title: const Text("Morning"),
                        value: "Gd Morning",
                        groupValue: contro.day,
                        onChanged: (String? v) {
                          contro.radioButton(v ?? "");
                          //print(v);
                        },
                      ),*/
                      RadioListTile(
                        title: const Text("Morning"),
                        value: Day.Gd_Morning,
                        groupValue: contro.day,
                        onChanged: (Day? value) {
                          contro.radioButton(value ?? Day.Gd_Morning);
                        },
                      ),
                      RadioListTile(
                        title: const Text("Evening"),
                        value: Day.Gd_Evening,
                        groupValue: contro.day,
                        onChanged: (Day? value) {
                          contro.radioButton(value ?? Day.Gd_Evening);
                        },
                      ),
                      RadioListTile(
                        title: const Text("Night"),
                        value: Day.Gd_Night,
                        groupValue: contro.day,
                        onChanged: (Day? value) {
                          contro.radioButton(value ?? Day.Gd_Night);
                          //print(v);
                        },
                      ),
                      Text("${contro.oishi}",
                          style: const TextStyle(fontSize: 20)),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
