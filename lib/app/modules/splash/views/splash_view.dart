import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import '../controllers/splash_controller.dart';
import 'package:dilcalculator/app/styles/fonts.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final sizedScreen = MediaQuery.sizeOf(context);
    final _ = Get.find<SplashController>();
    return Scaffold(
      body: SizedBox(
        height: sizedScreen.height,
        width: sizedScreen.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/calculator.png", height: 80.0),
            const SizedBox(height: 20.0),
            Text(
              "DilCalculator",
              style: black600.copyWith(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
