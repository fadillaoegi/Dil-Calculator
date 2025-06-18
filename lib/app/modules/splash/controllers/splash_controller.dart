// import 'dart:async';
import 'package:dilcalculator/app/routes/app_pages.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashStart();
  }

  splashStart() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.home);
  }
}
