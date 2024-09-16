import 'package:app_embarazo/src/pages/calidad_vida/calidad_vida.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/proyecto_vida.dart';
import 'package:app_embarazo/src/pages/dieta/dieta.dart';
import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/pages/modulos_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_tactil_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/home_psico_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_oportuna_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/respiracion/respiracion_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wakakuna',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Calibri'
      ),
      home: 
      //const HomePage(),
      //const ModulosPage(),
      //const HomePsicoPage()
      //const EstimulacionOportunaPage()
      //const EstimulacionTactilPage()
      //const RespiracionPage(),
      //const DietaPage(),
      //const ProyectoVidaPage()
      const CalidadVidaPage()
    );
  }
}