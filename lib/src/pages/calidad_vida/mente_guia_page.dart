import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_button_widget.dart';
import 'package:flutter/material.dart';

class MenteGuiaPage extends StatefulWidget {
  const MenteGuiaPage({super.key});

  @override
  State<MenteGuiaPage> createState() => _MenteGuiaPageState();
}

class _MenteGuiaPageState extends State<MenteGuiaPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/diario.jpg';

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              color: colorButton,
              text: 'Tu Mente guía: \n¿Cómo te sientes hoy?',
              isSubtitle: true,
              showButton: false,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Primera fila con 2 columnas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150, // Establece un ancho fijo para cada botón
                        child: ButtonWithBackgroundImage(
                          imagePath: imagesrc,
                          buttonText: '',
                          onPressed: () {
                            Navigator.pushNamed(context, '/diario');
                          },
                        ),
                      ),
                      Container(
                        width: 150, // Establece un ancho fijo para cada botón
                        child: ButtonWithBackgroundImage(
                          imagePath: imagesrc,
                          buttonText: '',
                          onPressed: () {
                            Navigator.pushNamed(context, '/diario');
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Espacio entre las filas

                  // Segunda fila con 2 columnas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150, // Establece un ancho fijo para cada botón
                        child: ButtonWithBackgroundImage(
                          imagePath: imagesrc,
                          buttonText: '',
                          onPressed: () {
                            Navigator.pushNamed(context, '/diario');
                          },
                        ),
                      ),
                      Container(
                        width: 150, // Establece un ancho fijo para cada botón
                        child: ButtonWithBackgroundImage(
                          imagePath: imagesrc,
                          buttonText: '',
                          onPressed: () {
                            Navigator.pushNamed(context, '/diario');
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Espacio entre las filas

                  // Tercera fila con 1 columna centrada
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150, // Establece un ancho fijo para el botón
                        child: ButtonWithBackgroundImage(
                          imagePath: imagesrc,
                          buttonText: '',
                          onPressed: () {
                            Navigator.pushNamed(context, '/diario');
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
