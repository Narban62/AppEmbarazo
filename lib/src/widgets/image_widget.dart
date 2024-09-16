import 'package:flutter/material.dart';

class ImagenWidget extends StatelessWidget {
  final String imagesrc;
  final double borderRadius;
  final bool isPrincipal;

  const ImagenWidget({
    super.key,
    required this.imagesrc,
    required this.isPrincipal,
    this.borderRadius = 5.0,
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
          fit: BoxFit.contain,
          child: Image.asset(
            imagesrc,
          ),
        ),
      ),
    );
  }
}
