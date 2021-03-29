import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/sizes.dart';
import 'package:diet_app/ui/viewmodel/authentication/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/background.dart';
import 'components/form_fields.dart';
import 'components/logo_text.dart';

class SignUp extends StatelessWidget {
  const SignUp();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: Get.put(SignUpViewModel()),
      onPageBuilder: (context, viewModel) => const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height_100percent(context),
      child: Stack(
        children: [
          Background(),
          SingleChildScrollView(
            child: Column(
              children: [
                LogoText(),
                FormFields(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
