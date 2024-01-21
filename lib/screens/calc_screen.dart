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
        child: Column(
          children: [
            Container(
              width: widthDevice,
              height: 300.0,
              padding: const EdgeInsets.all(12.0),
              color: Colors.redAccent,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("data",)],
              ),
            ),
            Expanded(
                child: Container(
              width: widthDevice,
              padding: const EdgeInsets.all(12.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
