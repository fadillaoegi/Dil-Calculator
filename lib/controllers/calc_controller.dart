import 'package:get/get.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends GetxController {
  var text = "0".obs;
  var total = "0".obs;

  void changeText(String data) {
    // print(text);
    if (data == "DE") {
      text.value = text.value.substring(0, text.value.length - 1);
      if (text.value == "") {
        text.value = "0";
      }
    } else if (data == "AC") {
      text.value = "0";
      total.value = "0";
    } else if (text.value == "0") {
      text.value = data;
    } else {
      text.value = text.value + data;
    }
  }

  void operation() {
    // print("Ditekan ${text.value}");
    // print("${text.value.interpret()}");
    total.value = "${text.value.interpret()}";
  }
}
