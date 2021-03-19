import 'package:diet_app/ui/viewmodel/authentication/login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Background extends StatelessWidget {
  const Background();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: Image(
        image: AssetImage(Get.put(LoginBackgroundViewModel()).model.assetName),
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
