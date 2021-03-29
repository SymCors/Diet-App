import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSection extends StatelessWidget {
  const BottomSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyProfile(),
        const Settings(),
      ],
    );
  }
}

class Settings extends StatelessWidget {
  const Settings();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.settings);
        },
        child: ListTile(
          leading: Icon(
            Icons.settings,
            color: AppColors.primarySwatch,
          ),
          title: Text('settings'.tr),
          trailing: Icon(
            Icons.chevron_right,
            color: AppColors.primarySwatch,
          ),
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.my_profile);
        },
        child: ListTile(
          leading: Icon(Icons.account_circle_rounded, color: AppColors.primarySwatch,),
          title: Text('my_profile'.tr),
          trailing: Icon(
            Icons.chevron_right,
            color: AppColors.primarySwatch,
          ),
        ),
      ),
    );
  }
}
