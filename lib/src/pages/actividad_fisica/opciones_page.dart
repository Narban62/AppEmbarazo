import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class OpcionesPage extends StatefulWidget {
  const OpcionesPage({super.key});

  @override
  State<OpcionesPage> createState() => _OpcionesPageState();
}

class _OpcionesPageState extends State<OpcionesPage> {
  Color backgroundColor = Color(0xffFFC5AA);
  Color buttonColor = Color(0xffFF8243);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          HeaderWidget(
            color: buttonColor,
            text: 'Bienvenida a la sección de\nActividad Física',
            isSubtitle: true,
            showButton: false,
          ),
          Button(
              buttonName: "Calentamiento",
              buttonColor: buttonColor,
              onPressed: () {
                Navigator.pushNamed(context, '/calentamiento');
              }),
          Button(
              buttonName: "Entrenamiento",
              buttonColor: buttonColor,
              onPressed: () {
                Navigator.pushNamed(context, '/trimestre');
              }),
          Button(
              buttonName: "Estiramiento",
              buttonColor: buttonColor,
              onPressed: () {
                Navigator.pushNamed(context, '/estiramiento_home');
              }),
          /*Button(
              buttonName: "Calendario",
              buttonColor: buttonColor,
              onPressed: () {
                Navigator.pushNamed(context, '/calendario');
              }),*/
        ],
      ),
    );
  }
}
