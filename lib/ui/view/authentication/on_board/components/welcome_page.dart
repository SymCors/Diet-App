import 'package:diet_app/ui/viewmodel/authentication/on_board/components/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Get.put(WelcomePageViewModel()).onBoardBase();
  }
}
