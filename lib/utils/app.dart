import 'package:dilcalculator/routes/routes.dart';
import 'package:dilcalculator/screens/calc_screen.dart';
import 'package:dilcalculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RoutesScreen.calculator,
      getPages: [
        GetPage(
          name: RoutesScreen.splash,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesScreen.calculator,
          page: () => const CalcScreen(),
        ),
      ],
    );
  }
}
