import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final names = List<String>.generate(10, (i) => 'name_ $i');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, right: 7, left: 7),
            child: Column(
              children: [
                AppCircularImage(
                  radius: 33,
                ),
                Text('${names[index]}', style: kStoryStyle,),
              ],
            ),
          );
        },
      ),
    );
  }
}
