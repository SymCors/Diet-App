import 'package:diet_app/ui/view/authentication/on_board/components/diet_page.dart';
import 'package:diet_app/ui/view/authentication/on_board/components/sport_page.dart';
import 'package:diet_app/ui/view/authentication/on_board/components/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardViewModel extends GetxController {

  var pageLists = <Widget>[
    WelcomePage(),
    SportPage(),
    DietPage(),
  ];

  final currentPageNotifier = ValueNotifier<int>(0);
  var currentPage = 0.obs;
  final pageController = PageController(initialPage: 0);

  void setPageNotifiers(int value) {
    currentPageNotifier.value = value;
    currentPage.value = value;
  }

  void login(){
    Get.offAndToNamed('/login');
  }

  bool get continueButtonVisible => currentPage.value == 2;
}
