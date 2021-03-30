import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentsBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(minWidth: 70),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Get.isDarkMode ? Theme.of(context).cardColor : Colors.grey.shade100,
          ),
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name Surname',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 5,
                bottom: 3,
                child: Text(
                  '14:12',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
