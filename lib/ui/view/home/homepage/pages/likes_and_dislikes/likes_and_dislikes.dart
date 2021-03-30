import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LikesAndDislikes extends StatelessWidget {
  const LikesAndDislikes();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BaseView(
        appBar: AppBar(
          title: Text(
            'likes'.tr,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(AppIcons.heart, color: Colors.red,)),
              Tab(icon: Icon(AppIcons.heart_broken, color: Colors.red,)),
            ],
          ),
        ),
        viewModel: null,
        onPageBuilder: (context, value) => const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        _LikedBy(),
        _DislikedBy(),
      ],
    );
  }
}

class _LikedBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(height: 5,),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: AppCircularImage(
            radius: 20,
          ),
          title: Text('Name Surname'),
          subtitle: Text('13:12'),
          trailing: Icon(Icons.chevron_right),
        );
      },
    );
  }
}

class _DislikedBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(height: 5,),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return ListTile(
          leading: AppCircularImage(
            radius: 20,
          ),
          title: Text('Name Surname'),
          subtitle: Text('14:25'),
          trailing: Icon(Icons.chevron_right),
        );
      },
    );
  }
}
