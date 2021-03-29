import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          AppCircularImage(radius: 40),
          SizedBox(width: 15),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.my_posts);
                    },
                    child: Column(
                      children: [
                        Text('24', style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 19, fontWeight: FontWeight.w600),),
                        Text('posts'.tr),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.my_posts),
                    child: Column(
                      children: [
                        Text('13', style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 19, fontWeight: FontWeight.w600),),
                        Text('likes'.tr),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.my_posts),
                    child: Column(
                      children: [
                        Text('42', style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 19, fontWeight: FontWeight.w600),),
                        Text('comments'.tr),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
