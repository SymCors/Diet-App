import 'package:diet_app/core/constant/styles.dart';
import 'package:flutter/material.dart';

class MessageDateUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
        margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Yesterday',
            style: kMessageDateStyle,
          ),
        ),
      ),
    );
  }
}