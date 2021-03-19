import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const header(),
            SizedBox(
              height: 10,
            ),
            const index(),
            SizedBox(
              height: 10,
            ),
            const result(),
            SizedBox(
              height: 10,
            ),
            const emoji(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class header extends StatelessWidget {
  const header();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Vücut Kitle İndeksi',
              style:
              Theme.of(context).textTheme.headline6.copyWith(fontSize: 17),
            ),
          ),
          Icon(
            AppIcons.question,
            color: Colors.orange,
            size: 20,
          ),
        ],
      ),
    );
  }
}

class index extends StatelessWidget {
  const index();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10),
      child: Text(
        '24.3',
        style: bigTextStyle,
      ),
    );
  }
}

class result extends StatelessWidget {
  const result();

  @override
  Widget build(BuildContext context) {
    return Text(
      'İdeal Kilo Aralığındasınız',
      style: kSuccessStyle,
    );
  }
}

class emoji extends StatelessWidget {
  const emoji();

  @override
  Widget build(BuildContext context) {
    return Icon(
      AppIcons.heart,
      size: 30,
      color: Colors.red,
    );
  }
}
