import 'package:diet_app/core/widget/circular_image.dart';
import 'package:diet_app/ui/view/home/homepage/pages/comments/components/comments_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentsListView extends StatelessWidget {
  const CommentsListView();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          child: Text(
            'comments'.tr + " (5)",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.grey.shade700),
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: AppCircularImage(
                      radius: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: CommentsBackground()),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
