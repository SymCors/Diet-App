import 'package:diet_app/ui/viewmodel/home/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/index.dart';
import 'components/bottom_section.dart';
import 'components/total_diet_time.dart';
import 'components/weight.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final viewModel = Get.put(ProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TotalDietTime(),
            SizedBox(
              height: 15,
            ),
            Weight(),
            SizedBox(
              height: 15,
            ),
            Index(),
            SizedBox(
              height: 15,
            ),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}
