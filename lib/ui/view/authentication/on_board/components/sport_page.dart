import 'package:diet_app/ui/viewmodel/authentication/on_board/components/sport_page.dart';
import 'package:flutter/material.dart';

class SportPage extends StatelessWidget {
  final viewModel = SportPageViewModel();

  @override
  Widget build(BuildContext context) {
    return viewModel.onBoardBase();
  }
}
