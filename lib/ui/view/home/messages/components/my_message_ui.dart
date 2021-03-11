import 'package:flutter/material.dart';

class MyMessageUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
            color: (Colors.white),
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
