import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appDarkTheme = ThemeData(
  /*pageTransitionsTheme: PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),*/

  primaryColor: AppColors.app_color,
  primarySwatch: AppColors.primarySwatch,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);