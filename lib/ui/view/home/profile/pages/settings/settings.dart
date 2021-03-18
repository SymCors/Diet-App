import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends BaseState<Settings> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      backgroundColor: !Get.isDarkMode ? AppColors.backgroundColor : null,
      appBar: AppBar(
        title: Text(
          'settings'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      viewModel: null,
      onPageBuilder: (context, value) => body(),
    );
  }

  Widget body() {
    return Container();
  }
}