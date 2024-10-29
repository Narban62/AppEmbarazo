import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/menu_widget.dart'; // Importamos MenuWidget
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/services/user_service.dart';

import '../../widgets/textfield_widget.dart'; // Importamos UserService

class InfoProyectoVidaPage extends StatefulWidget {
  const InfoProyectoVidaPage({super.key});

  @override
  State<InfoProyectoVidaPage> createState() => _InfoProyectoVidaPageState();
}

class _InfoProyectoVidaPageState extends State<InfoProyectoVidaPage> {
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
    String nombre = await _userService.obtenerNombreUsuario();
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
              text: 'Hola $nombreUsuario,\nbienvenida a tu proyecto de vida',
              isSubtitle: true,
              showButton: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),

            // Implementamos el widget de menú con la nueva funcionalidad
            MenuWidget(
              titulo: 'Autoconocimiento',
              contenido: 'Identifica tus gustos, preferencias, recursos, habilidades y valores.',
              informacionAdicional: 'Esta es una oportunidad para reflexionar sobre lo que quieres para tu futuro y para conseguir las metas que te propongas.',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            CustomTextField(
              labelText: 'Autoconocimiento',
              controller: autoconocimientoController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            MenuWidget(
              titulo: 'Visualización',
              contenido: 'Visualiza cómo puedes llegar a tu meta.',
              informacionAdicional: 'Puedes imaginar cómo lograr tus metas y ser una mujer positiva para alcanzarlas.',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            CustomTextField(
              labelText: 'Visualización',
              controller: visualizacionController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            MenuWidget(
              titulo: 'Metas y Propósitos',
              contenido: 'Realiza acciones para llegar a tu meta.',
              informacionAdicional: 'En tu camino se pueden identificar barreras que retrasen el cumplimiento de tus objetivos, mantenen una actitud positiva y ten autoconfianza en que las cosas se pueden lograr.',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            CustomTextField(
              labelText: 'Metas y Propósitos',
              controller: metasController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 80.0)),

            // Botón de saltar
            Button(
              buttonName: 'Guardar',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/guardar_proyecto_vida');
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
