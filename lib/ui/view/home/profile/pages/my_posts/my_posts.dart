import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/ui/view/home/homepage/components/posts.dart';
import 'package:diet_app/ui/viewmodel/home/profile/pages/my_posts/my_posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPosts extends StatelessWidget {
  const MyPosts();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(
        title: Text(
          'my_posts'.tr,
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
    final viewModel = Get.put(MyPostsViewModel());

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: viewModel.names.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Header(viewModel, index),
                    const Texts(),
                    const Images(),
                    const LikesAndDislikes(),
                    const CustomDividers(),
                    const Buttons(),
                  ],
                ),
              ),
              const CustomDivider(),
            ],
          );
        },
      ),
    );
  }
}
