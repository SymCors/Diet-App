import 'package:flutter/material.dart';

class MessageDateUI extends StatelessWidget {
  const MessageDateUI();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
        margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Yesterday',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
