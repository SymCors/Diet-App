import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    this.height = 10,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: !Get.isDarkMode
          ? AppColors.backgroundColor
          : Theme.of(context).appBarTheme.backgroundColor.withOpacity(0.3),
    );
  }
}
