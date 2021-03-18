import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/ui/view/home/search/components/exercises.dart';
import 'package:diet_app/ui/viewmodel/home/search/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/dietitians.dart';
import 'components/meals.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final viewModel = Get.put(SearchViewModel());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Meals(),
          CustomDivider(
            height: 15,
          ),
          Dietitians(),
          CustomDivider(
            height: 15,
          ),
          Exercises(),
        ],
      ),
    );
  }
}
