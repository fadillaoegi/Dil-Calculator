import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.sizeOf(context).height;
    double widthDevice = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: heightDevice,
        width: widthDevice,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("DilCalculator"),
          ],
        ),
      ),
    );
  }
}
