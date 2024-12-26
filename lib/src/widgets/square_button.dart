import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String imageSrc;
  final String text;
  final VoidCallback onPressed;
  final double size;
  final Color color;

  const SquareButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.onPressed,
    this.size = 150,
    this.color = const Color(0xff226EAD),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen circular
            ClipOval(
              child: Image.asset(
                imageSrc,
                width: size * 0.5, // Ajusta la imagen al 50% del tamaño del botón
                height: size * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            // Texto centrado
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
