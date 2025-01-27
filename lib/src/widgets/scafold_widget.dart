import 'package:app_embarazo/src/widgets/perfil_widget.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import 'modules_menu_widget.dart';
import 'navigation_bar_widget.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BaseScaffold({
    required this.body,
    required this.title,
    required this.selectedIndex,
    required this.onItemTapped,
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: body,
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
        onPageTap1: () => Navigator.of(context).pushNamedAndRemoveUntil(
          '/home_page',
              (route) => false,
        ), // Cambia HomePage por la pantalla inicial de tu app

        onPageTap2: () => Navigator.pushNamed(context, '/calendario'), // Ir a Actividad Física
        onPageTap3: () => Navigator.pushNamed(context, '/actividad_fisica'),
        // Otra página
        /*onPageTap1: () => onItemTapped(1), // Ir a Calendario
        onPageTap2: () => onItemTapped(2), // Ir a Actividad Física
        onPageTap3: () => onItemTapped(3),
        // Otra página*/
        onItemTapped: onItemTapped,        // Cambiar por índice general
        selectedIndex: selectedIndex,      // Índice actual seleccionado
      ),
    );
  }
}
