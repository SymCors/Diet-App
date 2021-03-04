import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/ui/viewmodel/authentication/on_board/on_board.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends BaseState<OnBoard> {
  final OnBoardViewModel viewModel = Get.put(OnBoardViewModel());

  Widget body() {
    return Stack(
      children: [
        PageView(
          controller: viewModel.pageController,
          onPageChanged: (int index) {
            viewModel.setPageNotifiers(index);
          },
          children: viewModel.pageLists,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: CirclePageIndicator(
            selectedDotColor: AppColors.app_color,
            dotColor: Colors.grey,
            itemCount: viewModel.pageLists.length,
            currentPageNotifier: viewModel.currentPageNotifier,
          ),
        ),
        Positioned(
          bottom: 80,
          left: 50,
          right: 50,
          child: Obx(
            () => Visibility(
              visible: viewModel.continueButtonVisible,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: AppColors.app_color,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Get.offAndToNamed('/sign_up');
                },
                child: Text('continue'.tr),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onModelReady: null,
      viewModel: viewModel,
      onPageBuilder: (context, value) => body(),
    );
  }
}
