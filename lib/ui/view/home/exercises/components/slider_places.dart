import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        background(),
        texts(),
      ],
    );
  }

  Widget background() {
    return Container(
      height: 100,
      margin: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
            spreadRadius: 1,
            offset: Offset(
              5,
              5.0,
            ),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
          image: AssetImage('assets/images/exercises/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget texts() {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'discover'.tr,
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
          ),
          Text(
            'do_sport'.tr,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
