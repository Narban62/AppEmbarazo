import 'package:app_embarazo/src/pages/actividad_fisica/actividad_fisica_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/calidad_vida.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/bienvenida_page.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/inicio_sesion.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/registro_page.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/terminos_condiciones_page.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/guardar_proyecto_vida.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/informacion_proyecto_vida.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/proyecto_vida.dart';
import 'package:app_embarazo/src/pages/dieta/dieta.dart';
import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/pages/modulos_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_auditiva_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_motora_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_tactil_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_visual_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/home_psico_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_oportuna_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/respiracion/respiracion_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      routes: {
        '/': (context) => StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  return HomePage();
                } else {
                  return LoginPage();
                }
              },
            ),  // Pantalla principal (Login)
        '/home': (context) => const HomePage(),
        '/inicio_sesion':(context)=>const LoginPage(),
        '/registro': (context) => const RegistroPage(),
        '/terminos': (context) => const TerminosCondicionesPaget(),
        '/welcome': (context) => const WelcomePage(),
        '/modulos': (context) => const ModulosPage(),
        '/calidad_vida': (context) => const CalidadVidaPage(),
        '/proyecto_vida': (context) => const ProyectoVidaPage(),
        '/info_proyecto_vida': (context) => const InfoProyectoVidaPage(),
        '/guardar_proyecto_vida': (context) => const GuardarProyectoVidaPage(),

        '/dieta': (context) => const DietaPage(),
        '/psicoprofilaxis': (context) => const HomePsicoPage(),
        '/respiracion': (context) => const RespiracionPage(),
        '/estimulacion_tactil': (context) => const EstimulacionTactilPage(),
        '/estimulacion_oportuna': (context) => const EstimulacionOportunaPage(),
        '/actividad_fisica': (context) => const ActividadFisicaPage(),
        '/estimulacion_auditiva': (context) => const EstimulacionAuditivaPage(),
        '/estimulacion_motora': (context) => const EstimulacionMotoraPage(),
        '/estimulacion_visual': (context) => const EstimulacionVisualPage(),
      },
      initialRoute: '/inicio_sesion',
    );
  }
}

