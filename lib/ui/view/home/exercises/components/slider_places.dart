import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CardHeader extends StatelessWidget {
  const CardHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          const Background(),
          const Texts(),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(
              1,
              1,
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
}

class Texts extends StatelessWidget {
  const Texts();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'discover'.tr,
            style: Theme.of(context).textTheme.headline4.copyWith(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(
            'do_sport'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
