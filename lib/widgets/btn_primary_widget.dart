import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dilcalculator/styles/fonts.dart';
import 'package:dilcalculator/styles/colors.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:dilcalculator/controllers/calc_controller.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary(
      {super.key,
      this.onPress,
      this.value,
      this.operator,
      this.icon,
      this.iconActive = false});
  final String? value;
  final String? operator;
  final Icon? icon;
  final bool? iconActive;
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
          child: iconActive!
              ? icon
              : Text(
                  operator!,
                  style: fontPrimary400.copyWith(fontSize: 30.0),
                ),
        ),
      ),
    );
  }
}
