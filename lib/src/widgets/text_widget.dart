import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
      child: FractionallySizedBox(
            widthFactor: 0.75,
            child: Text(
              text,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  height: 1.2,
                  color: Colors.black),
            )));
  }
}
