import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/pages/modulos_page.dart';
import 'package:app_embarazo/src/widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';

class AppWrapper extends StatelessWidget {
  final Widget child;
  final int currentIndex;

  const AppWrapper({
    Key? key,
    required this.child,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FixedBottomNavigationBar(
      pages: [
        HomePage(),
        ModulosPage(),
      ],
      navigationItems: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: 'Módulos',
        ),
      ],
    );
  }
}
