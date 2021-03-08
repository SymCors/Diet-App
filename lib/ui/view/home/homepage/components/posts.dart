import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/bottom_sheet.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:diet_app/ui/viewmodel/home/homepage/components/posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Posts extends StatelessWidget {
  final viewModel = Get.put(PostsViewModel());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.names.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            header(context, index),
            text(),
            image(),
            likeAndDislikes(),
            customDivider(),
            buttons(),
          ],
        );
      },
    );
  }

  Widget header(context, index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10),
      child: Row(
        children: [
          AppCircularImage(
            radius: 17,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('${viewModel.names[index]}', style: kPostNameStyle),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(AppIcons.kebab_vertical),
              onPressed: (){
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return AppBottomSheet(
                      size: 150,
                      child: bottomSheetBody(context),
                    );
                  },
                );
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

  Widget likeAndDislikes() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              AppIcons.heart,
              size: 20,
              color: Colors.red,
            ),
          ),
          Text('4'),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 8),
            child: Icon(
              AppIcons.heart_broken,
              size: 20,
              color: Colors.red,
            ),
          ),
          Text('1'),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 8),
            child: Icon(
              AppIcons.comment_dots,
              size: 20,
              color: Colors.blueGrey,
            ),
          ),
          Text('12'),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  '23 min',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customDivider() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 1,
        color: Colors.grey[100],
      ),
    );
  }

  Widget buttons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            child: TextButton.icon(
              style: kPostButtonStyle,
              onPressed: () {},
              icon: Icon(AppIcons.thumbs_up),
              label: Text('like'.tr),
            ),
          ),
          Expanded(
            child: TextButton.icon(
              style: kPostButtonStyle,
              onPressed: () {},
              icon: Icon(AppIcons.thumbs_down),
              label: Text('dislike'.tr),
            ),
          ),
          Expanded(
            child: TextButton.icon(
              style: kPostButtonStyle,
              onPressed: () {},
              icon: Icon(AppIcons.comment_empty),
              label: Text('comment'.tr),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheetBody(context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.directions, color: Colors.blue[300],),
          title: Text('direct'.tr),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.report_problem_outlined, color: Colors.red[300],),
          title: Text('report'.tr),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
