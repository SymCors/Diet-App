import 'package:flutter/material.dart';

class AppButtonInfo extends StatelessWidget {
  const AppButtonInfo({
    this.icon,
    this.text,
    this.foregroundColor,
    this.backgroundColor,
  });

  final IconData icon;
  final text;
  final Color foregroundColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => backgroundColor)),
        child: Row(
          children: [
            Icon(
              icon,
              color: foregroundColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              '$text',
              style: TextStyle(color: foregroundColor),
            ),
          ],
        ),
      ),
    );
  }
}
