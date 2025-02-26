import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/menu_widget.dart'; // Importamos MenuWidget
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/services/user_service.dart';

import '../../widgets/image_widget.dart';
import '../../widgets/textfield_widget.dart'; // Importamos UserService

class InfoQueProyectoVidaPage extends StatefulWidget {
  const InfoQueProyectoVidaPage({super.key});

  @override
  State<InfoQueProyectoVidaPage> createState() => _InfoProyectoVidaPageState();
}

class _InfoProyectoVidaPageState extends State<InfoQueProyectoVidaPage> {
  String nombreUsuario = ''; // Aquí se almacenará el nombre del usuario
  final UserService _userService = UserService(); // Instancia de UserService
  final TextEditingController autoconocimientoController = TextEditingController(); // Controlador para Autoconocimiento
  final TextEditingController visualizacionController = TextEditingController(); // Controlador para Visualización
  final TextEditingController metasController = TextEditingController(); // Controlador para Metas

  @override
  void initState() {
    super.initState();
    obtenerNombreUsuario(); // Llamamos a la función para obtener el nombre
  }

  // Función para obtener el nombre utilizando el servicio
  Future<void> obtenerNombreUsuario() async {
    String nombre = await _userService.obtenerNombreCompleto();
    setState(() {
      nombreUsuario = nombre;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffd6f8ca);
    const Color colorButton = Color(0xff007900);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // El saludo dinámico se pasa al HeaderWidget
            HeaderWidget(
              color: colorButton,
              text: 'Recuerda que tu proyecto de vida es único y personal, no olvides.',
              isSubtitle: true,
              showButton: true,
            ),
            HeaderWidget(
              text: 'Darle sentido a tu vida.',
              color: color,
              isSubtitle: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            const ImagenWidget(
                imagesrc: 'assets/images/proyecto_de_vida/Vida.jpeg',
                isPrincipal: false),

            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            // Implementamos el widget de menú con la nueva funcionalidad
            MenuWidget(
              titulo: '\nMás información',
              contenido: '',
              informacionAdicional: 'Al definir tus objetivos y valores, comprendes mejor quién eres y hacia dónde quieres dirigirte.',
            ),
            HeaderWidget(
              text: 'Tomar mejores decisiones.',
              color: color,
              isSubtitle: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            const ImagenWidget(
                imagesrc: 'assets/images/proyecto_de_vida/decisiones.jpeg',
                isPrincipal: false),

            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            // Implementamos el widget de menú con la nueva funcionalidad
            MenuWidget(
              titulo: '\nMás información',
              contenido: '',
              informacionAdicional: 'Al tener claro tu rumbo, podrás elegir las opciones que te acerquen a tus metas, evitando perderte en caminos que no te llevan a ninguna parte.',
            ),
            HeaderWidget(
              text: 'Aumentar tu motivación.',
              color: color,
              isSubtitle: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            const ImagenWidget(
                imagesrc: 'assets/images/proyecto_de_vida/motivacion.jpeg',
                isPrincipal: false),

            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            // Implementamos el widget de menú con la nueva funcionalidad
            MenuWidget(
              titulo: '\nMás información',
              contenido: '',
              informacionAdicional: 'Al visualizar tu futuro ideal y establecer pasos concretos para alcanzarlo, te sentirás más motivada y enfocada.',
            ),
            HeaderWidget(
              text: 'Desarrollar tus habilidades.',
              color: color,
              isSubtitle: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            const ImagenWidget(
                imagesrc: 'assets/images/proyecto_de_vida/habilidades.jpeg',
                isPrincipal: false),

            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            // Implementamos el widget de menú con la nueva funcionalidad
            MenuWidget(
              titulo: '\nMás información',
              contenido: '',
              informacionAdicional: 'Para lograr tus metas, tendrás que '
                  'trabajar en tus fortalezas y '
                  'desarrollar nuevas habilidades, lo que '
                  'te permitirá crecer como persona.',
            ),
            HeaderWidget(
              text: 'Superar obstáculos.',
              color: color,
              isSubtitle: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            const ImagenWidget(
                imagesrc: 'assets/images/proyecto_de_vida/obstaculos.jpeg',
                isPrincipal: false),

            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            // Implementamos el widget de menú con la nueva funcionalidad
            MenuWidget(
              titulo: '\nMás información',
              contenido: '',
              informacionAdicional: 'Al tener un plan claro, '
                  'estarás mejor preparada para enfrentar los desafíos que '
                  'surjan en el camino.',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Button(
              buttonName: 'Siguiente',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/video_dieta');
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          ],
        ),
      ),
    );
  }
}

void test() {
  print("test Josue");
}
