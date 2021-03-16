import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Weight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            header(context),
            kilo(context),
            progressBar(),
            texts(context),
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
            child: Text('kilo'.tr,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 17)),
          ),
          Container(
            decoration: BoxDecoration(
              color: !Get.isDarkMode
                  ? AppColors.backgroundColor
                  : Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              '65.5 kg',
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

  Widget kilo(context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 10),
      child: Text(
        '71.0 kg',
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: AppColors.titleColors, fontSize: 25),
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

  Widget texts(context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'starting'.tr + ': ' + '75.3' + ' kg',
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .color
                      .withOpacity(0.6),
                  fontSize: 13),
            ),
          ),
          Text(
            'aim'.tr + ': ' + '65.5' + ' kg',
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .color
                    .withOpacity(0.6),
                fontSize: 13),
          ),
        ],
      ),
    );
  }
}
