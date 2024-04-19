import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class MessageSender extends StatelessWidget {
  // variables for message
  final String message;
  final colorMessageBox;
  final textMessageColor;

  const MessageSender(
      {super.key,
      required this.message,
      required this.colorMessageBox,
      required this.textMessageColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 80.0),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 25.0, right: 20.0),
                decoration: BoxDecoration(
                  color: colorMessageBox,
                ),
                child: Text(
                  message,
                  style: TextStyle(color: textMessageColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
