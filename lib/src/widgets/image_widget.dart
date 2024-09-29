import 'package:flutter/material.dart';

class ImagenWidget extends StatelessWidget {
  final String imagesrc; // Fuente de la imagen (puede ser un asset o una URL remota)
  final double borderRadius;
  final bool isPrincipal;

  const ImagenWidget({
    super.key,
    required this.imagesrc,
    required this.isPrincipal,
    this.borderRadius = 25.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var imageWidth = 0.0;
    var imageHeight = 0.0;

    if (isPrincipal) {
      imageWidth = screenWidth * 0.8;
      imageHeight = screenHeight * 0.4;
    } else {
      imageWidth = screenWidth * 0.6;
      imageHeight = screenHeight * 0.3;
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        width: imageWidth,
        height: imageHeight,
        child: FittedBox(
          fit: BoxFit.cover,
          child: _loadImage(imagesrc), // Usamos la nueva función para cargar la imagen
        ),
      ),
    );
  }

  // Función para decidir si cargar desde assets o una URL remota
  Widget _loadImage(String src) {
    if (src.startsWith('http')) {
      // Si es una URL remota (Firebase Storage)
      return Image.network(
        src,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                  (loadingProgress.expectedTotalBytes!)
                  : null,
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error, size: 50, color: Colors.red); // Mostrar icono de error si falla
        },
      );
    } else {
      // Si es un asset local
      return Image.asset(
        src,
        fit: BoxFit.cover,
      );
    }
  }
}
