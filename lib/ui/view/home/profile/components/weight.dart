import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Weight extends StatelessWidget {
  const Weight();

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
            const _Header(),
            const _Kilo(),
            const _ProgressBar(),
            const _Texts(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(10),
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
}

class _Kilo extends StatelessWidget {
  const _Kilo();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(left: 10),
      child: Text(
        '71.0 kg',
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: AppColors.titleColors, fontSize: 25),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
      child: LinearProgressIndicator(
        backgroundColor: Colors.red,
        value: 0.4,
        minHeight: 10,
      ),
    );
  }
}

class _Texts extends StatelessWidget {
  const _Texts();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
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
