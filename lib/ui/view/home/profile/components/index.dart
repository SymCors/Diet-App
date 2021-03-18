import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
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
            header(context),
            SizedBox(
              height: 10,
            ),
            index(),
            SizedBox(
              height: 10,
            ),
            result(),
            SizedBox(
              height: 10,
            ),
            emoji(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget header(context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
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

  Widget index() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 10),
      child: Text(
        '24.3',
        style: bigTextStyle,
      ),
    );
  }

  Widget result() {
    return Text(
      'İdeal Kilo Aralığındasınız',
      style: kSuccessStyle,
    );
  }

  Widget emoji() {
    return Icon(
      AppIcons.heart,
      size: 30,
      color: Colors.red,
    );
  }
}
