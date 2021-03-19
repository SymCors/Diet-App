import 'package:flutter/material.dart';

class MyMessageUI extends StatelessWidget {
  const MyMessageUI();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        constraints: BoxConstraints(minWidth: 80, maxWidth: 275),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10),
              bottomLeft: const Radius.circular(10)),
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
        margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 15, color: Colors.black),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.done,
                    size: 14,
                    color: Colors.green,
                  ),
                  SizedBox(width: 3),
                  Text(
                    '14:12',
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
