import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:flutter/material.dart';

import 'components/profile_header/components/buttons.dart';
import 'components/index.dart';
import 'components/bottom_section.dart';
import 'components/profile_header/profile_header.dart';
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
      child: Column(
        children: [
          const ProfileHeader(),
          const CustomDivider(),
          const TotalDietTime(),
          SizedBox(height: 15),
          const Weight(),
          SizedBox(height: 15),
          const Index(),
          SizedBox(height: 15),
          const BottomSection(),
        ],
      ),
    );
  }
}
