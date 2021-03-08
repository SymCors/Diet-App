import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/ui/viewmodel/home/exercises/pages/exercise_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciseDetailsView extends StatefulWidget {
  @override
  _ExerciseDetailsViewState createState() => _ExerciseDetailsViewState();
}

class _ExerciseDetailsViewState extends State<ExerciseDetailsView> {
  final viewModel = Get.put(ExerciseDetailsViewViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModel: viewModel, onPageBuilder: (context, value) => body(),);
  }

  Widget body(){
    return Container();
  }
}
