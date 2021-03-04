import 'package:diet_app/ui/view/authentication/on_board/base/base.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class DietPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardBase('assets/images/onboard/onboarding3.png','diet_lists'.tr, 'onboard3_subtitle'.tr);
  }
}
