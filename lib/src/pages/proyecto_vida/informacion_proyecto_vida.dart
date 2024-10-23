import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/menu_widget.dart'; // Importamos MenuWidget
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/services/user_service.dart'; // Importamos UserService

class InfoProyectoVidaPage extends StatefulWidget {
  const InfoProyectoVidaPage({super.key});

  @override
  State<InfoProyectoVidaPage> createState() => _InfoProyectoVidaPageState();
}

class _InfoProyectoVidaPageState extends State<InfoProyectoVidaPage> {
  String nombreUsuario = ''; // Aquí se almacenará el nombre del usuario
  final UserService _userService = UserService(); // Instancia de UserService

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
    const Color color = Color(0xffB4FF9A);
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
              contenido: 'Identificar gustos, preferencias, recursos, habilidades y valores.',
              informacionAdicional: 'Esta es una oportunidad para reflexionar sobre lo que quiere para su futuro y para conseguir las metas que se proponga.',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            MenuWidget(
              titulo: 'Visualización',
              contenido: 'Visualizar cómo se puede llegar a esa meta.',
              informacionAdicional: 'Permite poder imaginar cómo lograr sus metas y ser personas positivas para alcanzarlas',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            MenuWidget(
              titulo: 'Metas y Propósitos',
              contenido: 'Realizar acciones para llegar a la meta.',
              informacionAdicional: 'En el camino se pueden identificar barreras que retrasen el cumplimiento de los objetivos, se requiere tener tolerancia a la frustración, mantener una actitud positiva y tener autoconfianza en que las cosas se pueden lograr.',
            ),
            const Padding(padding: EdgeInsets.only(bottom: 80.0)),

            // Botón de saltar
            Button(
              buttonName: 'Saltar',
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
