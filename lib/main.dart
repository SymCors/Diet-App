import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/ui/view/authentication/login/login.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:get/get.dart';
import 'package:diet_app/core/init/language/language_manager.dart';

import 'ui/view/authentication/on_board/on_board.dart';

void main() {
  runApp(
    GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      initialRoute: '/login',
      routes: {
        '/':(context) => Main(),
        '/on_board':(context) => OnBoard(),
        '/login':(context) => Login(),
      },
      theme: ThemeData(
        primaryColor: AppColors.app_color,
        primarySwatch: AppColors.primarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends BaseState<Main> {
  @override
  Widget build(BuildContext context) {
    return OnBoard();
  }
}
