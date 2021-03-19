import 'package:flutter/material.dart';

class MessageActionButton extends StatelessWidget {
  const MessageActionButton({
    this.icon,
    this.onPressed,
    this.iconData,
    this.iconColor,
    this.iconSize,
  });

  final Icon icon;
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: icon ??
            Icon(
              iconData ?? Icons.arrow_back,
              size: iconSize ?? 32.0,
              color: iconColor ?? Colors.black.withOpacity(0.7),
            ),
      ),
    );
  }
}
