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
          tileColor: Color(0xffE7BAFF),
          onTap: () => Navigator.pushNamed(context, '/calidad_vida_page_0'),
        ),
        ListTile(
          title: const Text('Proyecto de Vida'),
          tileColor: Color(0xffd6f8ca),
          onTap: () => Navigator.pushNamed(context, '/proyecto_vida'),
        ),
        ListTile(
          title: const Text('Dieta'),
          tileColor: Color(0xffAEDAFE),
          onTap: () => Navigator.pushNamed(context, '/dieta'),
        ),
        ListTile(
          title: const Text('Psicoprofilaxis'),
          tileColor: Color(0xffFCDEE7),
          onTap: () => Navigator.pushNamed(context, '/psicoprofilaxis'),
        ),
        ListTile(
          title: const Text('Actividad Física'),
          tileColor: Color(0xffFFC5AA),
          onTap: () => Navigator.pushNamed(context, '/actividad_fisica'),
        ),
      ],
    );
  }
}
