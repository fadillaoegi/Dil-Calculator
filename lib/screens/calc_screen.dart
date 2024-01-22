// ignore_for_file: must_be_immutable

import 'package:dilcalculator/styles/colors.dart';
import 'package:dilcalculator/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // height: MediaQuery.sizeOf(context).height,
        height: Get.height,
        // width: MediaQuery.sizeOf(context).width,
        width: Get.width,
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 300.0,
              padding: const EdgeInsets.all(12.0),
              color: ColorApps.bg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "2000",
                    style: fontWhite400.copyWith(fontSize: 60.0),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "10",
                    style: fontSecondary400.copyWith(fontSize: 30.0),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              width: Get.width,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: ColorApps.bg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnAccent(
                        value: "AC",
                        onPress: () {},
                      ),
                      BtnPrimary(
                        value: "%",
                        onPress: () {},
                      ),
                      BtnPrimary(
                        value: "%",
                        onPress: () {},
                      ),
                      BtnAccent(
                        value: "DE",
                        onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "7",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "8",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "9",
                        onPress: () {},
                      ),
                      BtnAccent(
                        value: "x",
                        onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "4",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "5",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "6",
                        onPress: () {},
                      ),
                      BtnAccent(
                        value: "÷",
                        onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "1",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "2",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "3",
                        onPress: () {},
                      ),
                      BtnAccent(
                        value: "+",
                        onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "0",
                        onPress: () {},
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      BtnWhite(
                        value: ".",
                        onPress: () {},
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: BtnAccent(
                          value: "=",
                          onPress: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class BtnPrimary extends StatelessWidget {
  BtnPrimary({super.key, this.onPress, this.value});
  String? value;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            color: ColorApps.bg2, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            value!,
            style: fontPrimary400.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class BtnAccent extends StatelessWidget {
  BtnAccent({super.key, this.onPress, this.value});
  String? value;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            color: ColorApps.primary,
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            value!,
            style: fontWhite400.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class BtnWhite extends StatelessWidget {
  BtnWhite({super.key, this.onPress, this.value});
  String? value;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            color: ColorApps.bg2, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            value!,
            style: fontWhite400.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
