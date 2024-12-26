import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final double letterSpacing;

  const TextWidget({
    required this.text,
    this.textAlign = TextAlign.left,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textColor = Colors.black,
    this.letterSpacing = 0.5,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: FractionallySizedBox(
        widthFactor: 0.85,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            textAlign: textAlign,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: 1.4,
              color: textColor,
              letterSpacing: letterSpacing,
            ),
          ),
        ),
      ),
    );
  }
}
