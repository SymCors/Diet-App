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
            const Header(),
            SizedBox(
              height: 10,
            ),
            const Indexes(),
            SizedBox(
              height: 10,
            ),
            const Result(),
            SizedBox(
              height: 10,
            ),
            const Emoji(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header();

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

class Indexes extends StatelessWidget {
  const Indexes();

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

class Result extends StatelessWidget {
  const Result();

  @override
  Widget build(BuildContext context) {
    return Text(
      'İdeal Kilo Aralığındasınız',
      style: kSuccessStyle,
    );
  }
}

class Emoji extends StatelessWidget {
  const Emoji();

  @override
  Widget build(BuildContext context) {
    return Icon(
      AppIcons.heart,
      size: 30,
      color: Colors.red,
    );
  }
}
