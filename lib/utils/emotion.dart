import 'package:flutter/material.dart';

class Emotion extends StatelessWidget {
  // Variable for our emoji icon
  final String emotIconFace;
  const Emotion({super.key, required this.emotIconFace});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            emotIconFace,
            style: const TextStyle(fontSize: 28.0),
          ),
        ));
  }
}
