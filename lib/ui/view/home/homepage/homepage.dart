import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/home/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/posts.dart';
import 'components/stories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final viewModel = Get.put(HomePageViewModel());
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onPageBuilder: (context, value) => body(context),
    );
  }

  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stories(),
          Divider(height: 1,),
          Posts(),
        ],
      ),
    );
  }
}
