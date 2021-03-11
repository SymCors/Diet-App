import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Dietitians extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          diets_header(),
          docs(),
        ],
      ),
    );
  }

  Widget diets_header() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text('Diyetisyenler', style: kSearchTitleStyle),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'see_all'.tr,
                style: kViewAllStyle,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget docs() {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      clipBehavior: Clip.none,
      children: List.generate(8, (index) {
        return InkWell(
          onTap: (){

          },
          child: Card(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                        AssetImage('assets/images/sign_up/profile_photo.png'),
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
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text('Diyetisyen', style: TextStyle(color: AppColors.primarySwatch),),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Icon(Icons.circle, color: Colors.green, size: 17,),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
