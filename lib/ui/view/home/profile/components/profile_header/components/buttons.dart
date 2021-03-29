import 'package:diet_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  const Buttons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                Get.toNamed(Routes.edit_profile);
                },
              child: Text('edit_profile'.tr),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                Get.toNamed(Routes.my_posts);
              },
              child: Text('my_posts'.tr),
            ),
          ),
        ],
      ),
    );
  }
}
