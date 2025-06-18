// import 'dart:async';
import 'package:dilcalculator/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // splashStart();
  }

  splashStart() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.home);
    print("AOKWOKWOWK");
  }
}
