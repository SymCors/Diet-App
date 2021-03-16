import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalDietTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            header(context),
            card(),
          ],
        ),
      ),
    );
  }

  Widget header(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7, bottom: 5),
      child: Row(
        children: [
          Expanded(
            child: Text('total_diet'.tr, style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 17),),
          ),
          Container(
            decoration: BoxDecoration(
              color: !Get.isDarkMode ? AppColors.backgroundColor : Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text('7 ' + 'day'.tr),
          ),
        ],
      ),
    );
  }

  Widget card() {
    return Card(
      color: AppColors.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.current_diet);
        },
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.emoji_food_beverage_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Diyet Adı 123',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 23),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            ListTile(
              leading: Text('3 ' + 'day'.tr, style: cardTitleStyleForDietTime,),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image(image: AssetImage('assets/icons/meal.png'), fit: BoxFit.contain, width: 40,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: AppColors.cardBackgroundDark),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, color: Colors.green, size: 15,),
                      SizedBox(width: 10,),
                      Expanded(child: Text('starting'.tr, style: cardTextStyleForDietTime,),),
                      Text('12/03/2021 11:28', style: cardTextStyleForDietTime)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.circle, color: Colors.red, size: 15,),
                      SizedBox(width: 10,),
                      Expanded(child: Text('ending'.tr, style: cardTextStyleForDietTime,),),
                      Text('12/03/2021 11:28', style: cardTextStyleForDietTime)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
