import 'package:diet_app/ui/model/authentication/on_board/base/on_board_base.dart';
import 'package:diet_app/ui/view/authentication/on_board/base/base.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SportPageViewModel extends GetxController {
  var model = OnBoardBaseModel(
      assetName: 'assets/images/onboard/onboarding2.png',
      title: 'activities'.tr,
      subtitle: 'onboard2_subtitle'.tr
  );

  Widget onBoardBase() {
    return OnBoardBase(model: model);
  }
}