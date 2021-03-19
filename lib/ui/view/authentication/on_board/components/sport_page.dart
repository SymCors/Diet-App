import 'package:diet_app/ui/viewmodel/authentication/on_board/components/sport_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportPage extends StatelessWidget {
  const SportPage();

  @override
  Widget build(BuildContext context) {
    return Get.put(SportPageViewModel()).onBoardBase();
  }
}
