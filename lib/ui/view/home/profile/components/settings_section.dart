import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class SettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        settings(),
      ],
    );
  }

  Widget settings() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){},
        child: ListTile(
          leading: Icon(Icons.settings, color: AppColors.primarySwatch,),
          title: Text('settings'.tr),
          trailing: Icon(Icons.chevron_right, color: AppColors.primarySwatch,),
        ),
      ),
    );
  }
}
