
import 'package:app_embarazo/src/pages/actividad_fisica/actividad_fisica_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/advertencias_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calendario_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calentamiento/calentamiento_instrucciones_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/calentamiento/calentamiento_page.dart';
import 'package:app_embarazo/src/pages/actividad_fisica/ejercicios_page.dart';
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
import 'package:app_embarazo/src/pages/dieta/plan_dieta.dart';

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
import 'package:app_embarazo/src/widgets/scafold_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'main.dart';
import 'main_navigation_bar.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return const BaseScaffold(
              body: HomePage(),
              title: 'HomePage',
            );
          } else {
            return const LoginPage();
          }
        },
      ),
      '/actividad_fisica': (context) => const BaseScaffold(
        body: ActividadFisicaPage(),
        title: 'Actividad Física',
      ),
      '/calendario': (context) => const BaseScaffold(
        body: CalendarioPage(),
        title: 'Calendario',
      ),
      '/modulos': (context) => const BaseScaffold(
        body: ModulosPage(),
        title: 'Módulos',
      ),
      '/calidad_vida': (context) => const BaseScaffold(
        body: CalidadVidaNPage(),
        title: 'Calidad de Vida',
      ),
      '/cuerpo_motor': (context) => const BaseScaffold(
        body: CuepoMotorPage(),
        title: 'Cuerpo y Motor',
      ),
      '/inicio_sesion': (context) => const LoginPage(),
      '/registro': (context) => const RegistroPage(),
      '/terminos': (context) => const BaseScaffold(
        body: TerminosCondicionesPaget(),
        title: 'Términos y Condiciones',
      ),
      '/welcome': (context) => const BaseScaffold(
        body: WelcomePage(),
        title: 'Bienvenido',
      ),
      '/mente_guia': (context) => const BaseScaffold(
        body: MenteGuiaPage(),
        title: 'Mente Guía',
      ),
      '/controles_prenatales': (context) => const BaseScaffold(
        body: ControlesPrenatalesPage(),
        title: 'Controles Prenatales',
      ),
      '/etapas_embarazo': (context) => const BaseScaffold(
        body: EtapasEmbarazoPage(),
        title: 'Etapas del Embarazo',
      ),
      '/diario': (context) => const BaseScaffold(
        body: DiarioPage(),
        title: 'Diario',
      ),
      '/habitos': (context) => const BaseScaffold(
        body: HabitosPage(),
        title: 'Hábitos',
      ),
      '/consejeria': (context) => const BaseScaffold(
        body: ConsejeriaPage(),
        title: 'Consejería',
      ),
      '/proyecto_vida': (context) => const BaseScaffold(
        body: ProyectoVidaPage(),
        title: 'Proyecto de Vida',
      ),
      '/info_proyecto_vida': (context) => const BaseScaffold(
        body: InfoProyectoVidaPage(),
        title: 'Información del Proyecto de Vida',
      ),
      '/guardar_proyecto_vida': (context) => const BaseScaffold(
        body: GuardarProyectoVidaPage(),
        title: 'Guardar Proyecto de Vida',
      ),
      '/dieta': (context) => const BaseScaffold(
        body: DietaPage(),
        title: 'Dieta',
      ),
      '/dieta_seleccion_trimestre': (context) => const BaseScaffold(
        body: DietaPageTrimestre(),
        title: 'Dieta por Trimestre',
      ),
      '/dieta_nutricional': (context) => const BaseScaffold(
        body: DietaNutricional(),
        title: 'Dieta Nutricional',
      ),
      '/psicoprofilaxis': (context) => const BaseScaffold(
        body: HomePsicoPage(),
        title: 'Psicoprofilaxis',
      ),
      '/respiracion': (context) => const BaseScaffold(
        body: RespiracionPage(),
        title: 'Respiración',
      ),
      '/trimestre': (context) => const BaseScaffold(
        body: TrimestresPage(),
        title: 'Trimestres',
      ),
      '/primer_trimestre': (context) => const BaseScaffold(
        body: PrimerTrimestrePage(),
        title: 'Primer Trimestre',
      ),
      '/segundo_trimestre': (context) => const BaseScaffold(
        body: SegundoTrimestrePage(),
        title: 'Segundo Trimestre',
      ),
      '/tercer_trimestre': (context) => const BaseScaffold(
        body: TercerTrimestrePage(),
        title: 'Tercer Trimestre',
      ),
      '/summary': (context) => const BaseScaffold(
        body: UserSummaryView(),
        title: 'Resumen del Usuario',
      ),
    };
  }
}



