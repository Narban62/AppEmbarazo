import 'package:app_embarazo/src/pages/actividad_fisica/actividad_fisica_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calendario_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/calidad_vida_page.dart';
import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/pages/modulos_page.dart';
import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/navigation_bar_widget.dart';
import 'package:app_embarazo/src/widgets/perfil_widget.dart';
import 'package:app_embarazo/src/widgets/modules_menu_widget.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  // Controlador del navegador
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Actualiza el índice seleccionado
    if (index == 0) {
      _navigatorKey.currentState?.pushNamed('/'); // Ruta principal
    } else if (index == 1) {
      _navigatorKey.currentState?.pushNamed('/calendario'); // Calendario
    } else if (index == 2) {
      _navigatorKey.currentState?.pushNamed('/actividad_fisica'); // Actividad Física
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wakakuna'),
        centerTitle: true,
      ),
      // Navigator como cuerpo de la pantalla
      body: Navigator(
        key: _navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(
                builder: (context) => const HomePage(), // Pantalla principal
              );
            case '/calendario':
              return MaterialPageRoute(
                builder: (context) => const CalendarioPage(), // Pantalla Calendario
              );
            case '/actividad_fisica':
              return MaterialPageRoute(
                builder: (context) => const ActividadFisicaPage(), // Pantalla Actividad Física
              );
            case '/calidad_vida':
              return MaterialPageRoute(
                builder: (context) => const CalidadVidaNPage(), // Pantalla Actividad Física
              );
            case '/modulos':
              return MaterialPageRoute(
                builder: (context) => const ModulosPage(), // Pantalla Actividad Física
              );
            default:
              return MaterialPageRoute(
                builder: (context) => const HomePage(), // Pantalla de error (opcional)
              );
          }
        },
      ),
      bottomNavigationBar: CustomNavigationBar(
        onProfileTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) => const ProfileBottomSheet(),
        ),
        onModulesTap: () => showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) => const ModulesMenu(),
        ),
        onPageTap1: () => _onItemTapped(1), // Ir a Calendario
        onPageTap2: () => _onItemTapped(2), // Ir a Actividad Física
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
