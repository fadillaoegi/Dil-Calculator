import 'package:dilcalculator/app/styles/colors.dart';
import 'package:dilcalculator/app/styles/fonts.dart';
import 'package:flutter/material.dart';

class BtnAccent extends StatelessWidget {
  const BtnAccent({super.key, this.onPress, this.value, this.operator});
  final String? value;
  final String? operator;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    // CalcController controller = Get.put(CalcController());

    return InkWell(
      // onTap: onPress,
      onTap: () {
        // controller.changeText(value.toString());
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
