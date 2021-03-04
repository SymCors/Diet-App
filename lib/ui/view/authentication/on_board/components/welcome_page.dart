import 'package:diet_app/core/constant/sizes.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Image(
                image: AssetImage('assets/images/onboard/onboarding1.png'),
                height: Sizes.height_30percent(context),
              ),
            ),
          ),
          Text('welcome'.tr, style: kTitleStyle, textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('onboard1_subtitle'.tr, style: kSubtitleStyle, textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
