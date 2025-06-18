import 'package:dilcalculator/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:dilcalculator/styles/colors.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  Future<void> startSplash() async {
    try {
      // STEP 1: Display initial loading message
      // message.value = "Loading...";
      // await Future.delayed(const Duration(seconds: 2));

      // STEP 2: Update message for session check
      // message.value = "Checking user session...";
      await Future.delayed(const Duration(seconds: 2));

      // STEP 3: Check user session
      Get.offAllNamed(RoutesScreen.calculator);
      // }
    } catch (e) {
      // message.value = "An error occurred, please restart the app.";
      Get.snackbar(
        "Error",
        "Failed to load session. Please try again.",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.sizeOf(context).height;
    double widthDevice = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: heightDevice,
        width: widthDevice,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/calculator.png",
              height: heightDevice / 10,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "DilCalculator",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: ColorApps.bg,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
