import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import 'rounded_linear_progress_indicator.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({
    Key key,
    this.backgroundColor,
    @required this.asset,
    @required this.title,
    @required this.calorie,
    @required this.calorieGained,
  }) : super(key: key);

  final backgroundColor;
  final asset;
  final title;
  final double calorie;
  final double calorieGained;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(
            asset: asset,
            title: title,
            calorie: calorie,
          ),
          SizedBox(
            height: 10,
          ),
          Body(
            calorieGained: calorieGained,
            calorie: calorie,
          ),
          Divider(
            height: 1,
          ),
          Footer(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({this.asset, this.title, this.calorie});

  final asset;
  final title;
  final calorie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          asset,
          width: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 17),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            '(${calorie.toStringAsFixed(0)} ${'calorie'.tr})',
            style: TextStyle(
                color: AppColors.primarySwatch,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.add_circle_outline,
            size: 30,
            color: AppColors.primarySwatch,
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    this.calorie,
    this.calorieGained,
  });

  final calorie;
  final calorieGained;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${calorieGained.toStringAsFixed(0)} Kalori Alındı',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          height: 10,
          width: 180,
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          child: AppRoundedLinearProgressIndicator(
            value: calorieGained / calorie,
            color: Colors.blue[300],
          ),
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/icons/basket.png',
              width: 50,
            ),
            Text(
              'add_something'.tr,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
