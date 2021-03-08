import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        diets(),
      ],
    );
  }

  Widget diets() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Diyetler',
                style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'see_all'.tr,
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            )
          ],
        ),
        ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 10,
              width: 10,
              color: Colors.red,
            );
          },
        ),
      ],
    );
  }
}
