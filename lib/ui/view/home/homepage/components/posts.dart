import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final names = List<String>.generate(10, (i) => 'Name Surname $i');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: names.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            header(index),
            text(),
            image(),
            footer(),
          ],
        );
      },
    );
  }

  Widget header(index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10),
      child: Row(
        children: [
          AppCircularImage(
            radius: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('${names[index]}', style: kPostNameStyle),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: PopupMenuButton(
              itemBuilder: (BuildContext bc) => [
                PopupMenuItem(
                  value: '/newchat',
                  child: Text('New Chat'),
                ),
                PopupMenuItem(
                  value: '/new-group-chat',
                  child: Text('New Group Chat'),
                ),
                PopupMenuItem(
                  value: '/settings',
                  child: Text('Settings'),
                ),
              ],
              onSelected: (route) {
                print(route);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget text() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        style: kPostTextStyle,
      ),
    );
  }

  Widget image() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 5),
      child: Image(
        image: AssetImage('assets/images/login/background.webp'),
      ),
    );
  }

  Widget footer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                AppIcons.heart_empty,
                size: 24,
              ),
              onPressed: () {}),
          Text('13 Likes'),
          SizedBox(
            width: 30,
          ),
          IconButton(
              icon: Icon(
                AppIcons.comment_empty,
                size: 24,
              ),
              onPressed: () {}),
          Text('20 Comments'),
        ],
      ),
    );
  }
}
