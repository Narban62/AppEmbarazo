import 'package:flutter/material.dart';

class FixedBottomNavigationBar extends StatefulWidget {
  final List<Widget> pages; // Lista de páginas a mostrar
  final List<BottomNavigationBarItem> navigationItems; // Ítems del BottomNavigationBar

  const FixedBottomNavigationBar({
    Key? key,
    required this.pages,
    required this.navigationItems,
  })  : assert(pages.length == navigationItems.length, 
              'El número de páginas debe coincidir con el número de ítems del BottomNavigationBar'),
        super(key: key);

  @override
  _FixedBottomNavigationBarState createState() => _FixedBottomNavigationBarState();
}

class _FixedBottomNavigationBarState extends State<FixedBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_selectedIndex], // Cambia la página según el índice
      bottomNavigationBar: BottomNavigationBar(
        items: widget.navigationItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 10,
      ),
    );
  }
}
