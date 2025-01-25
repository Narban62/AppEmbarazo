import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback onProfileTap;
  final VoidCallback onModulesTap;
  final VoidCallback onPageTap1;
  final VoidCallback onPageTap2;
  final VoidCallback onPageTap3;

  final ValueChanged<int> onItemTapped;
  final int selectedIndex;

  const CustomNavigationBar({
    super.key,
    required this.onProfileTap,
    required this.onModulesTap,
    required this.onPageTap1,
    required this.onPageTap2,
    required this.onPageTap3,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    assert(
    selectedIndex >= 0 && selectedIndex < 60,
    'El índice seleccionado ($selectedIndex) está fuera del rango permitido.',
    );
    return BottomNavigationBar(
      currentIndex: selectedIndex.clamp(0, 4),
      onTap: (index) {
        if (index == 0) {
          onProfileTap();
        } else if (index == 1) {
          onModulesTap();
        } else if (index == 2) {
          onPageTap1();
        } else if (index == 3) {
          onPageTap2();
        } else if (index == 4) {
          onPageTap3();
        } else {
          onItemTapped(index);
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Módulos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Actividad Física',
        ),
      ],
      // Estilo personalizado
      backgroundColor: Colors.blueGrey[900], // Color de fondo de la barra
      selectedItemColor: Colors.white, // Color de los ítems seleccionados
      unselectedItemColor: Colors.blueGrey[400], // Color de los ítems no seleccionados
      showSelectedLabels: true, // Mostrar etiquetas para los ítems seleccionados
      showUnselectedLabels: true, // Mostrar etiquetas para los ítems no seleccionados
      selectedFontSize: 14, // Tamaño del texto para los ítems seleccionados
      unselectedFontSize: 12, // Tamaño del texto para los ítems no seleccionados
      type: BottomNavigationBarType.fixed, // Tipo de barra (fija o shifting)
      elevation: 10, // Sombra debajo de la barra
    );
  }
}
