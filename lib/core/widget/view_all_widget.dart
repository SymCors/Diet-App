import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({
    @required this.child,
    @required this.title,
    @required this.onClick,
    this.color,
  });

  final Widget child;
  final title;
  final VoidCallback onClick;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          DietsHeader(
            title: title,
            onClick: onClick,
          ),
          child,
        ],
      ),
    );
  }
}

class DietsHeader extends StatelessWidget {
  const DietsHeader({
    @required this.title,
    @required this.onClick,
  });

  final title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 17)),
            ),
            TextButton(
              onPressed: () {
                onClick();
              },
              child: Text(
                'see_all'.tr,
                style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .color
                        .withOpacity(0.7)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
