import 'package:flutter/material.dart';

import 'circular_image.dart';

class AppMessageAppBar extends StatelessWidget {
  final nameSurname;
  final status;

  AppMessageAppBar({this.nameSurname, this.status});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        color: Colors.white,
        height: 56,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              InkWell(
                onTap: () {},
                child: ProfileSection(nameSurname, status),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ProfileSection(nameSurname, status) {
    return Row(
      children: [
        SizedBox(width: 15),
        AppCircularImage(radius: 19),
        SizedBox(width: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$nameSurname',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 2),
            Text(
              '$status',
              style: TextStyle(color: Colors.green, fontSize: 13),
            ),
          ],
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
