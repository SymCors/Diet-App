import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Name Surname',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.grey.shade600, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
