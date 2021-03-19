import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/ui/view/home/search/components/exercises.dart';
import 'package:flutter/material.dart';

import 'components/dietitians.dart';
import 'components/meals.dart';

class Search extends StatefulWidget {
  const Search();

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    //final viewModel = Get.put(SearchViewModel());
    return SingleChildScrollView(
      child: Column(
        children: [
          const Meals(),
          CustomDivider(
            height: 15,
          ),
          const Dietitians(),
          CustomDivider(
            height: 15,
          ),
          const Exercises(),
        ],
      ),
    );
  }
}
