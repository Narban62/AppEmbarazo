import 'package:app_embarazo/src/pages/actividad_fisica/actividad_fisica_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calendario_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/ejercicios_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/calidad_vida_page.dart';
import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/pages/modulos_page.dart';
import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/navigation_bar_widget.dart';
import 'package:app_embarazo/src/widgets/perfil_widget.dart';
import 'package:app_embarazo/src/widgets/modules_menu_widget.dart';

import 'package:app_embarazo/src/pages/actividad_fisica/advertencias_page.dart';
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
import 'package:app_embarazo/src/pages/calidad_vida/consejeria_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/controles_prenatales_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/cuerpo_motor_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/etapas_embarazo_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/habitos_page.dart';
import 'package:app_embarazo/src/pages/calidad_vida/mente_guia_page.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_carne_cruda.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_embutidos.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_evitar.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_marisco.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_navegacion.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_nutricional.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_pescado.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_recetas.dart';
import 'package:app_embarazo/src/pages/dieta/dieta_seleccion_trimestre.dart';
import 'package:app_embarazo/src/pages/dieta/plan_dieta.dart';

import 'package:app_embarazo/src/pages/inicio_sesion_registro/bienvenida_page.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/inicio_sesion.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/registro_page.dart';
import 'package:app_embarazo/src/pages/inicio_sesion_registro/terminos_condiciones_page.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/guardar_proyecto_vida.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/informacion_proyecto_vida.dart';
import 'package:app_embarazo/src/pages/proyecto_vida/proyecto_vida.dart';
import 'package:app_embarazo/src/pages/dieta/dieta.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_auditiva_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_motora_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_tactil_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_visual_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/home_psico_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/estimulacion/estimulacion_oportuna_page.dart';
import 'package:app_embarazo/src/pages/psicoprofilaxis/respiracion/respiracion_page.dart';
import 'package:app_embarazo/src/pages/summary_page.dart';


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
      _navigatorKey.currentState?.pushNamed('/home_page'); // Calendario
    } else if (index == 2) {
      _navigatorKey.currentState?.pushNamed('/cronometro'); // Actividad Física
    }else if (index == 3) {
      _navigatorKey.currentState?.pushNamed('/calendario'); // Calendario
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
    case '/actividad_fisica':
    return MaterialPageRoute(
    builder: (context) => const ActividadFisicaPage()
    );
    case '/calendario':
    return MaterialPageRoute(
    builder: (context) => const CalendarioPage(),
    );
    case '/modulos':
    return MaterialPageRoute(
    builder: (context) => const ModulosPage()
    );
    case '/calidad_vida':
    return MaterialPageRoute(
    builder: (context) => const CalidadVidaNPage()
    );
    case '/cuerpo_motor':
    return MaterialPageRoute(
    builder: (context) => const CuepoMotorPage()
    );
    case '/inicio_sesion':
    return MaterialPageRoute(
    builder: (context) => const LoginPage(),
    );
    case '/registro':
    return MaterialPageRoute(
    builder: (context) => const RegistroPage(),
    );
    case '/terminos':
    return MaterialPageRoute(
    builder: (context) => const TerminosCondicionesPaget(),
    );
    case '/welcome':
    return MaterialPageRoute(
    builder: (context) => const WelcomePage(),
    );
    case '/mente_guia':
    return MaterialPageRoute(
    builder: (context) => const MenteGuiaPage(),
    );
    case '/controles_prenatales':
    return MaterialPageRoute(
    builder: (context) => const ControlesPrenatalesPage(),
    );
    case '/etapas_embarazo':
    return MaterialPageRoute(
    builder: (context) => const EtapasEmbarazoPage(),
    );
    case '/diario':
    return MaterialPageRoute(
    builder: (context) => const DiarioPage(),
    );
    case '/habitos':
    return MaterialPageRoute(
    builder: (context) => const HabitosPage(),
    );
    case '/consejeria':
    return MaterialPageRoute(
    builder: (context) => const ConsejeriaPage(),
    );
    case '/proyecto_vida':
    return MaterialPageRoute(
    builder: (context) => const ProyectoVidaPage(),
    );
    case '/info_proyecto_vida':
    return MaterialPageRoute(
    builder: (context) => const InfoProyectoVidaPage(),
    );
    case '/guardar_proyecto_vida':
    return MaterialPageRoute(
    builder: (context) => const MostrarProyectoVidaPage(),
    );
    case '/dieta':
    return MaterialPageRoute(
    builder: (context) => const DietaPage(),
    );
    case '/dieta_seleccion_trimestre':
    return MaterialPageRoute(
    builder: (context) => const DietaPageTrimestre(),
    );
    case '/dieta_nutricional':
    return MaterialPageRoute(
    builder: (context) => const DietaNutricional(),
    );
    case '/dieta_evitar':
    return MaterialPageRoute(
    builder: (context) => const DietaEvitar(),
    );
    case '/dieta_embutidos':
    return MaterialPageRoute(
    builder: (context) => const DietaEmbutidos(),
    );
    case '/dieta_pescado':
    return MaterialPageRoute(
    builder: (context) => const DietaPescado(),
    );
    case '/dieta_marisco':
    return MaterialPageRoute(
    builder: (context) => const DietaMarisco(),
    );
    case '/dieta_carne_cruda':
    return MaterialPageRoute(
    builder: (context) => const DietaCarneCruda(),
    );
    case '/dieta_navegacion':
    return MaterialPageRoute(
    builder: (context) => const DietaNavegacion(),
    );
    case '/dieta_recetas':
    return MaterialPageRoute(
    builder: (context) => const DietaRecetas(),
    );

    case '/psicoprofilaxis':
    return MaterialPageRoute(
    builder: (context) => const HomePsicoPage(),
    );
    case '/respiracion':
    return MaterialPageRoute(
    builder: (context) => const RespiracionPage(),
    );
    case '/estimulacion_tactil':
    return MaterialPageRoute(
    builder: (context) => const EstimulacionTactilPage(),
    );
    case '/estimulacion_oportuna':
    return MaterialPageRoute(
    builder: (context) => const EstimulacionOportunaPage(),
    );
    case '/estimulacion_auditiva':
    return MaterialPageRoute(
    builder: (context) => const EstimulacionAuditivaPage(),
    );
    case '/estimulacion_motora':
    return MaterialPageRoute(
    builder: (context) => const EstimulacionMotoraPage(),
    );
    case '/estimulacion_visual':
    return MaterialPageRoute(
    builder: (context) => const EstimulacionVisualPage(),
    );
    case '/advertencias':
    return MaterialPageRoute(
    builder: (context) => const ContraindicacionesPage1(),
    );
    case '/opciones':
    return MaterialPageRoute(
    builder: (context) => const OpcionesPage(),
    );
    case '/calentamiento':
    return MaterialPageRoute(
    builder: (context) => const CalentamientoPage(),
    );
    case '/estiramiento_home':
    return MaterialPageRoute(
    builder: (context) => const EstiramientoHomePage(),
    );
    case '/estiramientos_instrucciones':
    return MaterialPageRoute(
    builder: (context) => const EstiramientoInstruccionesPage(),
    );
    case '/calentamiento_instrucciones':
    return MaterialPageRoute(
    builder: (context) => const InstruccionesCalentamientoState(),
    );
    case '/trimestre':
    return MaterialPageRoute(
    builder: (context) => const TrimestresPage(),
    );
    case '/primer_trimestre':
    return MaterialPageRoute(
    builder: (context) => const PrimerTrimestrePage(),
    );
    case '/primer_home':
    return MaterialPageRoute(
    builder: (context) => const PrimerHomePage(),
    );
    case '/primer_instrucciones':
    return MaterialPageRoute(
    builder: (context) => const PrimerInstruccionesPage(),
    );
    case '/segundo_trimestre':
    return MaterialPageRoute(
    builder: (context) => const SegundoTrimestrePage(),
    );
    case '/segundo_home':
    return MaterialPageRoute(
    builder: (context) => const SegundoHomePage(),
    );
    case '/segundo_instrucciones':
    return MaterialPageRoute(
    builder: (context) => const SegundoInstruccionesPage(),
    );
    case '/tercer_trimestre':
    return MaterialPageRoute(
    builder: (context) => const TercerTrimestrePage(),
    );
    case '/tercer_home':
    return MaterialPageRoute(
    builder: (context) => const TercerHomePage(),
    );
    case '/tercer_instrucciones':
    return MaterialPageRoute(
    builder: (context) => const TercerInstruccionesPage(),
    );

    case '/summary':
    return MaterialPageRoute(
    builder: (context) => const UserSummaryView(),
    );
    case '/dieta_alimentos':
    return MaterialPageRoute(
    builder: (context) => const MealPlanScreen(),
    );
    case '/cronometro':
    return MaterialPageRoute(
    builder: (context) => const ExerciseScreen(),
    );
    default:
    return MaterialPageRoute(
    builder: (context) => const HomePage(),
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
        onPageTap3: () => _onItemTapped(3),
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
