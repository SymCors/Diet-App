import 'package:flutter/material.dart';

import 'components/index.dart';
import 'components/bottom_section.dart';
import 'components/total_diet_time.dart';
import 'components/weight.dart';

class Profile extends StatefulWidget {
  const Profile();

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //final viewModel = Get.put(ProfileViewModel());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const TotalDietTime(),
            SizedBox(
              height: 15,
            ),
            const Weight(),
            SizedBox(
              height: 15,
            ),
            const Index(),
            SizedBox(
              height: 15,
            ),
            const BottomSection(),
          ],
        ),
      ),
    );
  }
}
