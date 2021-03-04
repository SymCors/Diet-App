import 'package:flutter/material.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/authentication/login/login_viewmodel.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends BaseState<Login> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: Get.put(LoginViewModel()),
        onPageBuilder: (context, dynamic viewModel) {
          return Container();
        });
  }
}
