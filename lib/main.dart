import 'package:app_embarazo/src/pages/actividad_fisica/actividad_fisica_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/advertencias_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calendario_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calentamiento/calentamiento_instrucciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calentamiento/calentamiento_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/primer/primer_home_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/primer/primer_instrucciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/segundo/segundo_home_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/segundo/segundo_instrucciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/tercero/tercer_home_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/tercero/tercer_instrucciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/estiramiento/estiramiento_home_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/estiramiento/estiramiento_instrucciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/opciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/primer/primer_trimestre_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/segundo/segundo_trimestre_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/tercero/tercer_trimestre_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/entrenamiento/trimestres_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/actividad_dario_emocional_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/calidad_vida_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/consejeria_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/controles_prenatales_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/cuerpo_motor_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/etapas_embarazo_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/habitos_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/mente_guia_page.dart';

import 'package:app_embarazo/src/pages/dieta/dieta_agregar_receta.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_carne_cruda.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_embutidos.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_evitar.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_marisco.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_navegacion.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_nutricional.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_pescado.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_receta_1.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_receta_2.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_recetas.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_seleccion_trimestre.dart';

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
import 'package:app_embarazo/src/pages/summary_page.dart';
import 'package:app_embarazo/src/widgets/app_wrapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Calibri'),
      routes: {
        '/': (context) => StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  _registrarIngreso(snapshot.data);
                  return AppWrapper(
                    child: HomePage(),
                    currentIndex: 0,
                  );
                } else {
                  return LoginPage();
                }
              },
            ), // Pantalla principal (Login)

        '/home': (context) => const AppWrapper(
              child: HomePage(),
              currentIndex: 0,
            ),
        '/inicio_sesion': (context) =>
            const AppWrapper(child: LoginPage(), currentIndex: 1),
        '/registro': (context) => const AppWrapper(child: RegistroPage(), currentIndex: 1),
        '/terminos': (context) => const AppWrapper(child: TerminosCondicionesPaget(), currentIndex: 1),
        
        '/welcome': (context) => const WelcomePage(),
        '/modulos': (context) => const ModulosPage(),

        '/calidad_vida': (context) => const CalidadVidaNPage(),
        '/cuerpo_motor': (context) => const CuepoMotorPage(),
        '/mente_guia': (context) => const MenteGuiaPage(),
        '/controles_prenatales': (context) => const ControlesPrenatalesPage(),
        '/etapas_embarazo': (context) => const EtapasEmbarazoPage(),
        '/diario': (context) => const DiarioPage(),
        '/habitos': (context) => const HabitosPage(),
        '/consejeria': (context) => const ConsejeriaPage(),

        '/proyecto_vida': (context) => const ProyectoVidaPage(),
        '/info_proyecto_vida': (context) => const InfoProyectoVidaPage(),
        '/guardar_proyecto_vida': (context) => const GuardarProyectoVidaPage(),

        '/dieta': (context) => const DietaPage(),
        '/dieta_seleccion_trimestre': (context) => const DietaPageTrimestre(),
        '/dieta_nutricional': (context) => const DietaNutricional(),
        '/dieta_evitar': (context) => const DietaEvitar(),
        '/dieta_embutidos': (context) => const DietaEmbutidos(),
        '/dieta_pescado': (context) => const DietaPescado(),
        '/dieta_marisco': (context) => const DietaMarisco(),
        '/dieta_carne_cruda': (context) => const DietaCarneCruda(),
        '/dieta_navegacion': (context) => const DietaNavegacion(),
        '/dieta_recetas': (context) => const DietaRecetas(),
        '/dieta_agregar_receta': (context) => const DietaAgregarReceta(),
        '/dieta_receta_1': (context) => const DietaReceta1(),
        '/dieta_receta_2': (context) => const DietaReceta2(),

        '/psicoprofilaxis': (context) => const HomePsicoPage(),
        '/respiracion': (context) => const RespiracionPage(),
        '/estimulacion_tactil': (context) => const EstimulacionTactilPage(),
        '/estimulacion_oportuna': (context) => const EstimulacionOportunaPage(),
        '/estimulacion_auditiva': (context) => const EstimulacionAuditivaPage(),
        '/estimulacion_motora': (context) => const EstimulacionMotoraPage(),
        '/estimulacion_visual': (context) => const EstimulacionVisualPage(),

        '/actividad_fisica': (context) => const ActividadFisicaPage(),
        '/advertencias': (context) => const ContraindicacionesPage1(),
        '/calendario': (context) => const CalendarioPage(),
        '/opciones': (context) => const OpcionesPage(),
        '/calentamiento': (context) => const CalentamientoPage(),
        '/estiramiento_home': (context) => const EstiramientoHomePage(),
        '/estiramientos_instrucciones': (context) =>
            const EstiramientoInstruccionesPage(),
        '/calentamiento_instrucciones': (context) =>
            const InstruccionesCalentamientoState(),
        '/trimestre': (context) => const TrimestresPage(),
        '/primer_trimestre': (context) => const PrimerTrimestrePage(),
        '/primer_home': (context) => const PrimerHomePage(),
        '/primer_instrucciones': (context) => const PrimerInstruccionesPage(),
        '/segundo_trimestre': (context) => const SegundoTrimestrePage(),
        '/segundo_home': (context) => const SegundoHomePage(),
        '/segundo_instrucciones': (context) => const SegundoInstruccionesPage(),
        '/tercer_trimestre': (context) => const TercerTrimestrePage(),
        '/tercer_home': (context) => const TercerHomePage(),
        '/tercer_instrucciones': (context) => const TercerInstruccionesPage(),

        '/summary': (context) => const UserSummaryView(),
      },
      initialRoute: '/',
    );
  }

  // Función para registrar el ingreso en Firestore
  void _registrarIngreso(User? user) async {
    if (user != null) {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference ingresos = firestore.collection('ingresos');

      await ingresos.add({
        'uid': user.uid,
        'fecha': DateTime.now(),
      });
    }
  }
}
