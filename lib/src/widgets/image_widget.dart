import 'package:flutter/material.dart';

class ImagenWidget extends StatelessWidget {
  final String imagesrc; // Fuente de la imagen (asset o URL remota)
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
    var imageWidth = 0.0;
    var imageHeight = 0.0;

    if (isPrincipal) {
      imageWidth = screenWidth * 0.85;
      imageHeight = imageWidth * 0.9;
    } else {
      imageWidth = screenWidth * 0.65;
      imageHeight = imageWidth * 0.8;
    }

    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: imageWidth,
        height: imageHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: _loadImage(imagesrc),
        ),
      ),
    );
  }

  Widget _loadImage(String src) {
    if (src.startsWith('http')) {
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
          return Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(
                Icons.broken_image,
                size: 50,
                color: Colors.grey,
              ),
            ),
          );
        },
      );
    } else {
      return Image.asset(
        src,
        fit: BoxFit.cover,
      );
    }
  }
}
