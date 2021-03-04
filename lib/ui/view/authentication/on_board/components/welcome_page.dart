import 'package:diet_app/ui/view/authentication/on_board/base/base.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardBase('assets/images/onboard/onboarding1.png','welcome'.tr, 'onboard1_subtitle'.tr);
  }
}
