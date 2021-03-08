import 'package:flutter/material.dart';

class AppButtonInfo extends StatelessWidget {
  final IconData icon;
  final text;
  final Color foregroundColor;
  final Color backgroundColor;

  AppButtonInfo({this.icon, this.text, this.foregroundColor, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => backgroundColor)),
      child: Row(
        children: [
          Icon(icon, color: foregroundColor,),
          SizedBox(width: 3,),
          Text('$text', style: TextStyle(color: foregroundColor),),
        ],
      ),
    );
  }
}
