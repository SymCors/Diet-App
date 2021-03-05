import 'package:diet_app/ui/viewmodel/authentication/on_board/components/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  final viewModel = Get.put(WelcomePageViewModel());

  @override
  Widget build(BuildContext context) {
    return viewModel.onBoardBase();
  }
}
