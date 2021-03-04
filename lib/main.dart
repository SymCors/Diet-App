import 'package:flutter/material.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:get/get.dart';
import 'package:diet_app/core/init/language/language_manager.dart';

import 'ui/view/authentication/login/login.dart';
import 'ui/view/authentication/on_board/on_board.dart';
import 'ui/view/authentication/sign_up/sign_up.dart';

void main() {
  runApp(
    GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      initialRoute: '/',
      routes: {
        '/':(context) => Main(),
        '/on_board':(context) => OnBoard(),
        '/sign_up':(context) => SignUp(),
        '/login':(context) => Login(),
      },
      theme: ThemeData(
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
