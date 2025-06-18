import 'package:dilcalculator/app/modules/home/controllers/home_controller.dart';
import 'package:dilcalculator/app/styles/colors.dart';
import 'package:dilcalculator/app/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({
    super.key,
    this.onPress,
    this.value,
    this.operator,
    this.icon,
    this.iconActive = false,
  });
  final String? value;
  final String? operator;
  final Icon? icon;
  final bool? iconActive;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return InkWell(
      onTap: () {
        controller.changeText(value.toString());
      },
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
          color: ColorApps.bg2,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child:
              iconActive!
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
