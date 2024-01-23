// ignore_for_file: avoid_print

import 'package:get/get.dart';

class CalcController extends GetxController {
  var text = "0".obs;

  void changeText(String data) {
    print(text);
    if (data == "DE") {
      text.value = text.value.substring(0, text.value.length - 1);
      if (text.value == "") {
        text.value = "0";
      }
    } else if (data == "AC") {
      text.value = "0";
    } else {
      text.value = text.value + data;
    }
  }
}
