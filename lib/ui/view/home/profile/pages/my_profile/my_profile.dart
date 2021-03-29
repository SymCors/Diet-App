import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/ui/view/home/profile/pages/my_profile/components/status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/buttons.dart';
import 'components/my_posts/my_posts.dart';
import 'components/profile_list_tile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(
      title: Text(
        'my_profile'.tr,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
    ),
      viewModel: null,
      onPageBuilder: (context, value) => const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileListTile(),
          const Status(),
          const Buttons(),
          const CustomDivider(),
          const MyPosts(),
        ],
      ),
    );
  }
}
