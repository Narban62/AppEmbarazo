import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;

  const ButtonBack({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
