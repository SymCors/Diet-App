import 'package:diet_app/core/constant/sizes.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/ui/model/authentication/on_board/base/on_board_base.dart';
import 'package:flutter/material.dart';

class OnBoardBase extends StatelessWidget {
  final OnBoardBaseModel model;

  const OnBoardBase({@required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Image(
              image: AssetImage(model.assetName),
              height: Sizes.height_30percent(context),
            ),
          ),
        ),
        Text(model.title, style: kTitleStyle, textAlign: TextAlign.center,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(model.subtitle, style: kSubtitleStyle, textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
