import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/ui/view/authentication/login/login.dart';
import 'package:diet_app/ui/view/authentication/sign_up/sign_up.dart';
import 'package:diet_app/ui/view/home/home_main.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:get/get.dart';
import 'package:diet_app/core/init/language/language_manager.dart';

import 'core/init/theme/dark_theme.dart';
import 'core/init/theme/light_theme.dart';
import 'ui/view/authentication/on_board/on_board.dart';
import 'ui/view/home/exercises/pages/exercise_details.dart';
import 'ui/view/home/exercises/pages/exercise_details_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      initialRoute: Routes.home_main,
      routes: {
        Routes.main:(context) => Main(),
        Routes.on_board:(context) => OnBoard(),
        Routes.login:(context) => Login(),
        Routes.sign_up:(context) => SignUp(),
        Routes.home_main:(context) => HomeMain(),
        Routes.exercise_details:(context) => ExerciseDetails(),
        Routes.exercise_details_view:(context) => ExerciseDetailsView(),
      },
      themeMode: ThemeMode.light,
      darkTheme: appDarkTheme,
      theme: appLightTheme,
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
