import 'package:diet_app/core/constant/sizes.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:flutter/material.dart';

class OnBoardBase extends StatelessWidget {
  final String asset_image, title, subtitle;

  const OnBoardBase(
    this.asset_image,
    this.title,
    this.subtitle
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Image(
              image: AssetImage(asset_image),
              height: Sizes.height_30percent(context),
            ),
          ),
        ),
        Text(title, style: kTitleStyle, textAlign: TextAlign.center,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(subtitle, style: kSubtitleStyle, textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
