import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/widget/view_all_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Dietitians extends StatelessWidget {
  const Dietitians();

  @override
  Widget build(BuildContext context) {
    return ViewAllWidget(
      title: 'dietitians'.tr,
      onClick: null,
      child: const docs(),
    );
  }
}

class docs extends StatelessWidget {
  const docs();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      clipBehavior: Clip.none,
      children: List.generate(8, (index) {
        return InkWell(
          onTap: () {},
          child: Card(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/sign_up/profile_photo.png'),
                      )),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Opacity(
                    opacity: 0.7,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      height: 25,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'dietitian'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: AppColors.primarySwatch),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 17,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
