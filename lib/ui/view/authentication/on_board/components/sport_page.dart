import 'package:diet_app/ui/viewmodel/authentication/on_board/components/sport_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportPage extends StatelessWidget {
  final viewModel = Get.put(SportPageViewModel());

  @override
  Widget build(BuildContext context) {
    return viewModel.onBoardBase();
  }
}
