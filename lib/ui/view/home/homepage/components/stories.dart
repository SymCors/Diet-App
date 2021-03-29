import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories();

  @override
  Widget build(BuildContext context) {
    final names = List<String>.generate(10, (i) => 'name_ $i');
    return Container(
      height: 110,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            key: Key(index.toString()),
            padding: const EdgeInsets.only(top: 15, right: 7, left: 7),
            child: Column(
              children: [
                const AppCircularImage(
                  radius: 33,
                ),
                Text(
                  '${names[index]}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 13),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
