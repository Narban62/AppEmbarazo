import 'package:flutter/material.dart';

class ImageWithDescriptionCheckbox extends StatefulWidget {
  final String imagePath;
  final String description;
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const ImageWithDescriptionCheckbox({
    Key? key,
    required this.imagePath,
    required this.description,
    required this.isChecked,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ImageWithDescriptionCheckboxState createState() =>
      _ImageWithDescriptionCheckboxState();
}

class _ImageWithDescriptionCheckboxState
    extends State<ImageWithDescriptionCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Fondo blanco
        borderRadius: BorderRadius.circular(16.0), // Bordes redondeados
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0), // Espaciado interno
      child: Row(
        children: [
          // Imagen
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              widget.imagePath,
              width: 50.0, // Tamaño de la imagen
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0), // Espacio entre la imagen y el texto
          // Descripción
          Expanded(
            child: Text(
              widget.description,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Checkbox
          Checkbox(
            value: widget.isChecked,
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
