import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String titulo;
  final String contenido;
  final String informacionAdicional; // Información adicional que se desplegará

  const MenuWidget({
    super.key,
    required this.titulo,
    required this.contenido,
    required this.informacionAdicional,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(contenido),
        trailing: const Icon(Icons.arrow_drop_down), // Icono de flecha desplegable
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(informacionAdicional), // Información adicional que se despliega
          ),
        ],
      ),
    );
  }
}
