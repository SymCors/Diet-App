import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/ui/view/home/homepage/components/posts.dart';
import 'package:diet_app/ui/viewmodel/home/profile/pages/my_profile/components/my_posts/my_posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPosts extends StatelessWidget {
  const MyPosts();

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.put(MyPostsViewModel());

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
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
