import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Exercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          diets_header(),
          diets(),
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
              child: Text('Egzersizler', style: kSearchTitleStyle),
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

  Widget diets() {
    return Container(
      height: 110,
      margin: EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: (){},
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage('assets/images/sign_up/background.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
