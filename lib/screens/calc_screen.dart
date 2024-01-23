// ignore_for_file: must_be_immutable

import 'package:dilcalculator/controllers/calc_controller.dart';
import 'package:dilcalculator/styles/colors.dart';
import 'package:dilcalculator/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CalcController controller = Get.put(CalcController());
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: height,
        // height: Get.height,
        width: width,
        // width: Get.width,
        child: Column(
          children: [
            Container(
              width: width,
              // height: 300.0,
              height: height / 3,
              padding: const EdgeInsets.all(12.0),
              color: ColorApps.bg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(() => Text(
                        // "2000",
                        "${controller.total}",
                        style: fontWhite400.copyWith(fontSize: 60.0),
                      )),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Obx(() => Text(
                        // "10",
                        "${controller.text}",
                        style: fontSecondary400.copyWith(fontSize: 30.0),
                      )),
                ],
              ),
            ),
            Expanded(
                child: Container(
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
                        operator: "AC",
                        // onPress: () {},
                      ),
                      BtnPrimary(
                        value: "%",
                        operator: "%",
                        // onPress: () {},
                      ),
                      BtnPrimary(
                        value: "",
                        operator: "",
                        // onPress: () {},
                      ),
                      BtnAccent(
                        value: "DE",
                        operator: "DE",
                        // onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "7",
                        operator: "7",
                        // onPress: () {},
                      ),
                      BtnWhite(
                        value: "8",
                        operator: "8",
                        onPress: () {},
                      ),
                      BtnWhite(
                        value: "9",
                        operator: "9",
                        // onPress: () {},
                      ),
                      BtnAccent(
                        value: "*",
                        operator: "x",
                        // onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "4",
                        operator: "4",
                        // onPress: () {},
                      ),
                      BtnWhite(
                        value: "5",
                        operator: "5",
                        // onPress: () {},
                      ),
                      BtnWhite(
                        value: "6",
                        operator: "6",
                        // onPress: () {},
                      ),
                      BtnAccent(
                        value: "/",
                        operator: "÷",
                        // onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "1",
                        operator: "1",
                        // onPress: () {},
                      ),
                      BtnWhite(
                        value: "2",
                        operator: "2",
                        // onPress: () {},
                      ),
                      BtnWhite(
                        value: "3",
                        operator: "3",
                        // onPress: () {},
                      ),
                      BtnAccent(
                        value: "+",
                        operator: "+",
                        // onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtnWhite(
                        value: "0",
                        operator: "0",
                        // onPress: () {},
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      BtnWhite(
                        value: ".",
                        operator: ".",
                        // onPress: () {},
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: InkWell(
                          // onTap: onPress,
                          onTap: () {
                            controller.operation();
                          },
                          child: Container(
                            height: 80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                color: ColorApps.primary,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Center(
                              child: Text(
                                "=",
                                style: fontWhite400.copyWith(fontSize: 30.0),
                              ),
                            ),
                          ),
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
  BtnPrimary({super.key, this.onPress, this.value, this.operator});
  String? value;
  String? operator;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    CalcController controller = Get.put(CalcController());

    return InkWell(
      // onTap: onPress,
      onTap: () {
        controller.changeText(value.toString());
      },
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            color: ColorApps.bg2, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            operator!,
            style: fontPrimary400.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class BtnAccent extends StatelessWidget {
  BtnAccent({super.key, this.onPress, this.value, this.operator});
  String? value;
  String? operator;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    CalcController controller = Get.put(CalcController());

    return InkWell(
      // onTap: onPress,
      onTap: () {
        controller.changeText(value.toString());
      },
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            color: ColorApps.primary,
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            operator!,
            style: fontWhite400.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class BtnWhite extends StatelessWidget {
  BtnWhite({super.key, this.onPress, this.value, this.operator});
  String? value;
  String? operator;

  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    CalcController controller = Get.put(CalcController());
    return InkWell(
      // onTap: onPress,
      onTap: () {
        controller.changeText(value.toString());
      },
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            color: ColorApps.bg2, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            operator!,
            style: fontWhite400.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
