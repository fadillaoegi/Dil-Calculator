import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dilcalculator/styles/fonts.dart';
import 'package:dilcalculator/styles/colors.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:dilcalculator/controllers/calc_controller.dart';

class BtnWhite extends StatelessWidget {
  const BtnWhite({super.key, this.onPress, this.value, this.operator});
  final String? value;
  final String? operator;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalcController());
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
