import 'package:get/get.dart';

class CalcController extends GetxController {
  var text = "".obs;

  void changeText(String data) {
    text.value = text.value + data;
  }
}
