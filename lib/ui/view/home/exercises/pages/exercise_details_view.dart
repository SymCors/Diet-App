import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/home/exercises/pages/exercise_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciseDetailsView extends StatelessWidget {
  const ExerciseDetailsView();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: Get.put(ExerciseDetailsViewViewModel()),
      onPageBuilder: (context, value) => const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
