import 'package:dilcalculator/app/modules/home/controllers/home_controller.dart';
import 'package:dilcalculator/app/styles/colors.dart';
import 'package:dilcalculator/app/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class BtnAccent extends StatelessWidget {
  const BtnAccent({super.key, this.onPress, this.value, this.operator});
  final String? value;
  final String? operator;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

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
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(operator!, style: fontWhite400.copyWith(fontSize: 30.0)),
        ),
      ),
    );
  }
}
