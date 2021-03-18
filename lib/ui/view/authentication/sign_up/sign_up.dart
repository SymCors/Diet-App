import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/sizes.dart';
import 'package:diet_app/ui/viewmodel/authentication/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/background.dart';
import 'components/form_fields.dart';
import 'components/logo_text.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final viewModel = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: viewModel, onPageBuilder: (context, value) => body());
  }

  Widget body() {
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
