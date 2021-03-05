import 'package:flutter/material.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/authentication/login/login.dart';

import 'components/background.dart';
import 'components/form.dart';
import 'components/logo_text.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: viewModel,
        onPageBuilder: (context, value) => body());
  }

  Widget body() {
    return Stack(
      children: [
        Background(),
        Column(
          children: [
            LogoText(),
            FormFields(),
          ],
        ),
      ],
    );
  }
}
