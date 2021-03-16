import 'package:diet_app/core/constant/colors.dart';
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
        color: Theme.of(context).scaffoldBackgroundColor,
        height: 56,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: ProfileSection(context, nameSurname, status),
                ),
              ),
              IconButton(icon: Icon(Icons.settings), onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }

  Widget ProfileSection(context, nameSurname, status) {
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
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 15),
            ),
            SizedBox(height: 2),
            Text(
              '$status',
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 13, color: AppColors.primarySwatch),
            ),
          ],
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
