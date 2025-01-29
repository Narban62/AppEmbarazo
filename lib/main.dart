import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Manejador de navegación basado en índices
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/psicoprofilaxis');
        break;
      case 1:
        Navigator.pushNamed(context, '/respiracion');
        break;
      case 2:
        Navigator.pushNamed(context, '/estimulacion_tactil');
        break;
      case 3:
        Navigator.pushNamed(context, '/estimulacion_oportuna');
        break;
      case 4:
        Navigator.pushNamed(context, '/estimulacion_auditiva');
        break;
      case 5:
        Navigator.pushNamed(context, '/estimulacion_motora');
        break;
      case 6:
        Navigator.pushNamed(context, '/estimulacion_visual');
        break;
      case 7:
        Navigator.pushNamed(context, '/advertencias');
        break;
      case 8:
        Navigator.pushNamed(context, '/opciones');
        break;
      case 9:
        Navigator.pushNamed(context, '/calentamiento');
        break;
      case 10:
        Navigator.pushNamed(context, '/estiramiento_home');
        break;
      case 11:
        Navigator.pushNamed(context, '/estiramientos_instrucciones');
        break;
      case 12:
        Navigator.pushNamed(context, '/calentamiento_instrucciones');
        break;
      case 13:
        Navigator.pushNamed(context, '/trimestre');
        break;
      case 14:
        Navigator.pushNamed(context, '/primer_trimestre');
        break;
      case 15:
        Navigator.pushNamed(context, '/primer_home');
        break;
      case 16:
        Navigator.pushNamed(context, '/primer_instrucciones');
        break;
      case 17:
        Navigator.pushNamed(context, '/segundo_trimestre');
        break;
      case 18:
        Navigator.pushNamed(context, '/segundo_home');
        break;
      case 19:
        Navigator.pushNamed(context, '/segundo_instrucciones');
        break;
      case 20:
        Navigator.pushNamed(context, '/tercer_trimestre');
        break;
      case 21:
        Navigator.pushNamed(context, '/tercer_home');
        break;
      case 22:
        Navigator.pushNamed(context, '/tercer_instrucciones');
        break;
      case 23:
        Navigator.pushNamed(context, '/actividad_fisica');
        break;
      case 24:
        Navigator.pushNamed(context, '/calendario');
        break;
      case 25:
        Navigator.pushNamed(context, '/modulos');
        break;
      case 26:
        Navigator.pushNamed(context, '/calidad_vida');
        break;
      case 27:
        Navigator.pushNamed(context, '/inicio_sesion');
        break;
      case 28:
        Navigator.pushNamed(context, '/registro');
        break;
      case 29:
        Navigator.pushNamed(context, '/terminos');
        break;
      case 30:
        Navigator.pushNamed(context, '/welcome');
        break;
      case 31:
        Navigator.pushNamed(context, '/cuerpo_motor');
        break;
      case 32:
        Navigator.pushNamed(context, '/mente_guia');
        break;
      case 33:
        Navigator.pushNamed(context, '/controles_prenatales');
        break;
      case 34:
        Navigator.pushNamed(context, '/etapas_embarazo');
        break;
      case 35:
        Navigator.pushNamed(context, '/diario');
        break;
      case 36:
        Navigator.pushNamed(context, '/habitos');
        break;
      case 37:
        Navigator.pushNamed(context, '/consejeria');
        break;
      case 38:
        Navigator.pushNamed(context, '/proyecto_vida');
        break;
      case 39:
        Navigator.pushNamed(context, '/info_proyecto_vida');
        break;
      case 40:
        Navigator.pushNamed(context, '/guardar_proyecto_vida');
        break;
      case 41:
        Navigator.pushNamed(context, '/dieta');
        break;
      case 42:
        Navigator.pushNamed(context, '/dieta_seleccion_trimestre');
        break;
      case 43:
        Navigator.pushNamed(context, '/dieta_nutricional');
        break;
      case 44:
        Navigator.pushNamed(context, '/dieta_evitar');
        break;
      case 45:
        Navigator.pushNamed(context, '/dieta_embutidos');
        break;
      case 46:
        Navigator.pushNamed(context, '/dieta_pescado');
        break;
      case 47:
        Navigator.pushNamed(context, '/dieta_marisco');
        break;
      case 48:
        Navigator.pushNamed(context, '/dieta_carne_cruda');
        break;
      case 49:
        Navigator.pushNamed(context, '/dieta_navegacion');
        break;
      case 50:
        Navigator.pushNamed(context, '/dieta_recetas');
        break;
      case 51:
        Navigator.pushNamed(context, '/dieta_agregar_receta');
        break;
      case 52:
        Navigator.pushNamed(context, '/dieta_receta_1');
        break;
      case 53:
        Navigator.pushNamed(context, '/dieta_receta_2');
        break;
      case 54:
        Navigator.pushNamed(context, '/summary');
        break;
    // Agrega más casos aquí si es necesario
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Embarazo',
      initialRoute: '/',
      routes: AppRoutes.getRoutes(_onItemTapped, _selectedIndex),
    );
  }
}
