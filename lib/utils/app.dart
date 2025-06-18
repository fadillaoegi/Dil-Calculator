import 'package:flutter/material.dart';
import 'package:dilcalculator/routes/routes.dart';
import 'package:dilcalculator/screens/calc_screen.dart';
import 'package:dilcalculator/screens/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([
//   DeviceOrientation.landscapeLeft,
//   DeviceOrientation.landscapeRight,
// ]);
    return GetMaterialApp(
      initialRoute: RoutesScreen.splash,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      showSemanticsDebugger: false,
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
