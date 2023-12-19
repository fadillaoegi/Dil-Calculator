import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.sizeOf(context).height;
    double widthDevice = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: heightDevice,
        width: widthDevice,
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
