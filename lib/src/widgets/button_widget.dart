import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final VoidCallback onPressed;
  final bool isEnabled;

  const Button({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            boxShadow: isEnabled
                ? [
                    BoxShadow(
                      color: buttonColor.withOpacity(0.5),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : [],
            borderRadius: BorderRadius.circular(14),
          ),
          child: ElevatedButton(
            onPressed: isEnabled ? onPressed : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isEnabled ? buttonColor : Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              shadowColor: Colors.transparent,
              elevation: 0,
            ),
            child: Text(
              buttonNameFinal(buttonName),
              style: TextStyle(
                fontSize: 17.0,
                color: isEnabled ? Colors.white : Colors.black54,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                shadows: isEnabled
                    ? [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(1, 2),
                          blurRadius: 3,
                        ),
                      ]
                    : [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String buttonNameFinal(String buttonName) {
  return buttonName[0].toUpperCase() + buttonName.substring(1).toLowerCase();
}
