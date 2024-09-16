import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            buttonNameFinal(buttonName),
            style: const TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
        ),
      ),
      )
    );
  }
} 
String buttonNameFinal(String buttonName) {
  return buttonName[0].toUpperCase()+buttonName.substring(1).toLowerCase();
}

