import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/ui/view/authentication/login/login.dart';
import 'package:diet_app/ui/view/authentication/sign_up/sign_up.dart';
import 'package:diet_app/ui/view/home/home_main.dart';
import 'package:diet_app/ui/view/home/profile/pages/current_diet/current_diet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:diet_app/core/init/language/language_manager.dart';

import 'core/init/theme/dark_theme.dart';
import 'core/init/theme/light_theme.dart';
import 'ui/view/authentication/on_board/on_board.dart';
import 'ui/view/home/exercises/pages/exercise_details.dart';
import 'ui/view/home/exercises/pages/exercise_details_view.dart';
import 'ui/view/home/messages/message_ui.dart';
import 'ui/view/home/profile/pages/my_analysis/my_analysis.dart';
import 'ui/view/home/profile/pages/settings/settings.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      initialRoute: Routes.home_main,
      routes: {
        Routes.main:(context) => const Main(),
        Routes.on_board:(context) => const OnBoard(),
        Routes.login:(context) => const Login(),
        Routes.sign_up:(context) => const SignUp(),
        Routes.home_main:(context) => const HomeMain(),
        Routes.exercise_details:(context) => const ExerciseDetails(),
        Routes.exercise_details_view:(context) => const ExerciseDetailsView(),
        Routes.message_ui:(context) => const MessageUI(),
        Routes.current_diet:(context) => const CurrentDiet(),
        Routes.my_analysis:(context) => const MyAnalysis(),
        Routes.settings:(context) => const Settings(),
      },
      themeMode: ThemeMode.light,
      darkTheme: appDarkTheme(context),
      theme: appLightTheme(context),
    );
  }
}

class Main extends StatelessWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    return OnBoard();
  }
}
