import 'package:flutter/material.dart';

class AppCircularImage extends StatelessWidget {
  final double radius;

  AppCircularImage({@required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('assets/images/sign_up/profile_photo.png'),
    );
  }
}
