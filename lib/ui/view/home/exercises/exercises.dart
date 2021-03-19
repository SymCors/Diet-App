import 'package:flutter/material.dart';

import 'components/programs.dart';
import 'components/slider_places.dart';

class Exercises extends StatelessWidget {
  const Exercises();

  @override
  Widget build(BuildContext context) {
    //final viewModel = Get.put(ExercisesViewModel());
    return SingleChildScrollView(
      child: Column(
        children: [
          const CardHeader(),
          const Programs(),
        ],
      ),
    );
  }
}
