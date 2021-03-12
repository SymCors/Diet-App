import 'package:flutter/material.dart';

class AppRoundedLinearProgressIndicator extends StatelessWidget {
  final value;
  final color;

  AppRoundedLinearProgressIndicator({this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: LinearProgressIndicator(
        value: value,
        backgroundColor: Colors.grey[300],
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
