import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Weight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            header(),
            kilo(),
            progressBar(),
            texts(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text('kilo'.tr, style: kSearchTitleStyle),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              '65.5' + ' kg.',
              style: kExerciseDetailsTitleStyle,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            AppIcons.pencil_alt,
            size: 15,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
  Widget kilo() {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 10),
      child: Text(
        '71.0 kg',
        style: bigTextStyle,
      ),
    );
  }
  Widget progressBar() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
      child: LinearProgressIndicator(
        backgroundColor: Colors.red,
        value: 0.4,
        minHeight: 10,
      ),
    );
  }
  Widget texts(){
    return Container(
      margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'starting'.tr + ': ' + '75.3' + ' kg',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Text(
            'aim'.tr + ': ' + '65.5' + ' kg',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
