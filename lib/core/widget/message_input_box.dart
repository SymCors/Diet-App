import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import 'message_action_button.dart';

class MessageInputBox extends StatelessWidget {
  const MessageInputBox({
    this.prefix,
    this.suffix,
    this.roundedCorners,
    this.onChanged,
    this.onSubmitted,
  });

  final Widget prefix;
  final Widget suffix;
  final bool roundedCorners;
  final Callback onChanged;
  final Callback onSubmitted;

  @override
  Widget build(BuildContext context) {
    double cornerRadius() {
      if (roundedCorners != null && roundedCorners == true) {
        return 25.0;
      } else {
        return 0.0;
      }
    }

    double padding() {
      if (roundedCorners != null && roundedCorners == true) {
        return 12.0;
      } else {
        return 8.0;
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(cornerRadius()),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 20,
            blurRadius: 20,
            offset: Offset(0, -5), // changes position of shadow
          )
        ],
      ),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 7, top: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(cornerRadius()),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: padding(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            prefix ??
                SizedBox(
                  width: 0,
                  height: 0,
                ),
            Expanded(
              child: TextField(
                onChanged: (text) {
                  onChanged;
                },
                onSubmitted: (text) {
                  onSubmitted;
                },
                maxLines: 4,
                minLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter Message...',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(
                    16.0,
                  ),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
            suffix ??
                SizedBox(
                  width: 0,
                  height: 0,
                ),
            MessageActionButton(
              icon: Icon(
                Icons.send,
                size: 24.0,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
