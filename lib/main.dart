import 'package:flutter/material.dart';
import 'package:diet_app/core/base/state/base_state.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:diet_app/core/init/language/language_manager.dart';


void main() {
  runApp(
    GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      home: Main(),
    )
  );
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends BaseState<Main> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
