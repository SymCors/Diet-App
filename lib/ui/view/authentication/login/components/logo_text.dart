import 'package:diet_app/ui/viewmodel/authentication/login/components/logo_text.dart';
import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  final viewModel = LoginLogoTextViewModel();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(80),
        child: Image(
          image: AssetImage(viewModel.model.assetName),
        ),
      ),
    );
  }
}
