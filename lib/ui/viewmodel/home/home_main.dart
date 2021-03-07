import 'package:diet_app/ui/model/home/home_main.dart';
import 'package:diet_app/ui/view/home/exercises/exercises.dart';
import 'package:diet_app/ui/view/home/homepage/homepage.dart';
import 'package:diet_app/ui/view/home/messages/messages.dart';
import 'package:diet_app/ui/view/home/profile/profile.dart';
import 'package:diet_app/ui/view/home/search/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMainViewModel extends GetxController {
  var model = HomeMainModel();
  var page = 0.obs;
  static var pages = [
    HomePage(),
    Search(),
    Messages(),
    Exercises(),
    Profile()
  ];
  static var pageNames = [
    'home'.tr,
    'search'.tr,
    'message'.tr,
    'exercise'.tr,
    'profile'.tr,
  ];
  Widget body = pages[0];
  var pageName = pageNames[0];

  void changePage(int index){
    body = pages[index];
    pageName = pageNames[index];
    page.value = index;
    print(index.toString());
    update();
  }
}