import 'package:flutter/material.dart';

import 'components/buttons.dart';
import 'components/profile_list_tile.dart';
import 'components/status.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          const ProfileListTile(),
          const Status(),
          const Buttons(),
        ],
      ),
    );
  }
}
