import 'package:flutter/material.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/authentication/login/login.dart';
import 'package:get/get.dart';

import 'components/background.dart';
import 'components/form_fields.dart';
import 'components/logo_text.dart';

class Login extends StatelessWidget {
  const Login();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: Get.put(LoginViewModel()),
      onPageBuilder: (context, value) => const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        Column(
          children: [
            const LogoText(),
            const FormFields(),
          ],
        ),
      ],
    );
  }
}
