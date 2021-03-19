import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

import 'circular_image.dart';

class AppMessageAppBar extends StatelessWidget {
  const AppMessageAppBar({
    this.nameSurname,
    this.status,
  });

  final nameSurname;
  final status;

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
              ProfileSection(
                nameSurname: nameSurname,
                status: status,
              ),
              IconButton(icon: Icon(Icons.settings), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({this.nameSurname, this.status});

  final nameSurname;
  final status;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(width: 15),
            const AppCircularImage(radius: 19),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$nameSurname',
                  style:
                      Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 15),
                ),
                SizedBox(height: 2),
                Text(
                  '$status',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 13, color: AppColors.primarySwatch),
                ),
              ],
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
