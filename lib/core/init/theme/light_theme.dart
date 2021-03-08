import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appLightTheme = ThemeData(
  pageTransitionsTheme: PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),

  primaryColor: AppColors.app_color,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);