import 'package:flutter/material.dart';

class ModulesMenu extends StatelessWidget {
  const ModulesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Módulos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: const Text('Calidad de Vida'),
          onTap: () => Navigator.pushNamed(context, '/calidad_vida'),
        ),
        ListTile(
          title: const Text('Proyecto de Vida'),
          onTap: () => Navigator.pushNamed(context, '/proyecto_vida'),
        ),
        ListTile(
          title: const Text('Dieta'),
          onTap: () => Navigator.pushNamed(context, '/dieta'),
        ),
        ListTile(
          title: const Text('Psicoprofilaxis'),
          onTap: () => Navigator.pushNamed(context, '/psicoprofilaxis'),
        ),
        ListTile(
          title: const Text('Actividad Física'),
          onTap: () => Navigator.pushNamed(context, '/actividad_fisica'),
        ),
      ],
    );
  }
}
