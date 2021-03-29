import 'package:diet_app/core/base/view/base_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDietLists extends StatefulWidget {
  const MyDietLists();

  @override
  _MyDietListsState createState() => _MyDietListsState();
}

class _MyDietListsState extends State<MyDietLists> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: null,
      appBar: AppBar(
        title: Text(
          'my_diet_lists'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      onPageBuilder: (context, value) => const body(),
    );
  }
}

class body extends StatelessWidget {
  const body();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
