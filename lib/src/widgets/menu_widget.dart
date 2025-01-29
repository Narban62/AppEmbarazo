import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String titulo;
  final String contenido;
  final String informacionAdicional;

  const MenuWidget({
    super.key,
    required this.titulo,
    required this.contenido,
    required this.informacionAdicional,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Más angosto
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Bordes más redondeados
      ),
      child: ExpansionTile(
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(contenido),
        trailing: const Icon(Icons.arrow_drop_down),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100], // Fondo opcional
              borderRadius: BorderRadius.circular(20), // Bordes más redondeados
            ),
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5), // Espacio interno
            child: Text(informacionAdicional),
          ),
        ],
      ),
    );
  }
}
