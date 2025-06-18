import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dilcalculator/app/styles/fonts.dart';
import 'package:dilcalculator/app/styles/colors.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:dilcalculator/app/widgets/btn_white_widget.dart';
import 'package:dilcalculator/app/widgets/btn_accent_widget.dart';
import 'package:dilcalculator/app/widgets/btn_primary_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
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
              // color: ColorApps.bg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(
                    () => Text(
                      // "2000",
                      "${controller.total}",
                      // style: fontWhite400.copyWith(fontSize: 60.0),
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Obx(
                    () => Text(
                      // "10",
                      "${controller.text}",
                      // style: fontSecondary400.copyWith(fontSize: 30.0),
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                // decoration: BoxDecoration(color: ColorApps.bg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // NOTE: SECTION 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BtnAccent(value: "AC", operator: "AC"),
                        BtnPrimary(value: "%", operator: "%"),
                        BtnPrimary(
                          value: "",
                          operator: "",
                          iconActive: true,
                          icon: const Icon(Icons.palette_outlined, size: 40.0),
                          onPress: () {
                            Get.changeTheme(
                              Get.isDarkMode
                                  ? ThemeData.light()
                                  : ThemeData.dark(),
                            );
                          },
                        ),
                        BtnAccent(
                          value: "DE",
                          operator: "DE",
                          // onPress: () {},
                        ),
                      ],
                    ),

                    // NOTE: SECTION 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BtnWhite(value: "7", operator: "7", onPress: () {}),
                        BtnWhite(value: "8", operator: "8", onPress: () {}),
                        BtnWhite(value: "9", operator: "9", onPress: () {}),
                        BtnAccent(value: "*", operator: "x", onPress: () {}),
                      ],
                    ),

                    // NOTE: SECTION 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BtnWhite(value: "4", operator: "4", onPress: () {}),
                        BtnWhite(value: "5", operator: "5", onPress: () {}),
                        BtnWhite(value: "6", operator: "6", onPress: () {}),
                        BtnAccent(value: "/", operator: "÷", onPress: () {}),
                      ],
                    ),

                    // NOTE: SECTION 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BtnWhite(value: "1", operator: "1", onPress: () {}),
                        BtnWhite(value: "2", operator: "2", onPress: () {}),
                        BtnWhite(value: "3", operator: "3", onPress: () {}),
                        BtnAccent(value: "+", operator: "+", onPress: () {}),
                      ],
                    ),

                    // NOTE: SECTION 5
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BtnWhite(value: "0", operator: "0", onPress: () {}),
                        const SizedBox(width: 18),
                        BtnWhite(value: ".", operator: ".", onPress: () {}),
                        const SizedBox(width: 18),
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
                                borderRadius: BorderRadius.circular(10.0),
                              ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
