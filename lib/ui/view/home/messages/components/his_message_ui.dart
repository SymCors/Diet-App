import 'package:flutter/material.dart';

class HisMessageUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
            color: Color(0xffc7defa),
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            'Deneme',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
