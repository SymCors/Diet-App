import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/bottom_sheet.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/ui/view/home/homepage/components/posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/comments_list_view.dart';

class Comments extends StatelessWidget {
  const Comments();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(
        title: Text(
          'details'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            icon: Icon(AppIcons.kebab_vertical),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AppBottomSheet(
                    size: 200,
                    child: BottomSheetBody(),
                  );
                },
              );
            },
          ),
        ],
      ),
      viewModel: null,
      onPageBuilder: (context, value) => const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            // TODO: Rename the classes with _ to make in private after removing posts from profile.
            _Header(),
            const Texts(),
            const Images(),
            const LikesAndDislikes(),
            const CustomDividers(),
            const Buttons(),
            const CustomDivider(),
            const CommentsListView(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10, top: 15),
      child: Row(
        children: [
          const AppCircularImage(
            radius: 17,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('Name Surname',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
