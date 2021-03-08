import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/home/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/programs.dart';
import 'components/slider_places.dart';

class Exercises extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  final viewModel = Get.put(ExercisesViewModel());
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
          CardHeader(),
          Programs(),
        ],
      ),
    );
  }
}
