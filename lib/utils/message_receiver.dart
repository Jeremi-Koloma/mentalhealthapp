import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class MessageReceiver extends StatelessWidget {
  // variables for message
  final String message;
  final colorMessageBox;
  final textMessageColor;

  const MessageReceiver(
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
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(right: 80.0),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.all(20.0),
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
