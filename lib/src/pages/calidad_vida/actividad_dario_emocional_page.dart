import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_button_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DiarioPage extends StatefulWidget {
  const DiarioPage({super.key});

  @override
  State<DiarioPage> createState() => _DiarioPageState();
}

class _DiarioPageState extends State<DiarioPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _descriptionController =
        TextEditingController();
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: '¿Qué actividades han provocado este sentimiento en ti?',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Caja redondeada con texto y fila de botones
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // Color de fondo
                      borderRadius:
                          BorderRadius.circular(16.0), // Bordes redondeados
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8.0,
                          offset: Offset(0, 4),
                        ),
                      ], // Sombra para dar un efecto elevado
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Texto
                        Text(
                          'Clima',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                            height: 16), // Espacio entre el texto y los botones

                        // Fila de 3 columnas
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100, // Ancho del botón
                              child: ButtonWithBackgroundImage(
                                imagePath: imagesrc,
                                buttonText: 'Botón 1',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/inicio_sesion');
                                },
                              ),
                            ),
                            Container(
                              width: 100, // Ancho del botón
                              child: ButtonWithBackgroundImage(
                                imagePath: imagesrc,
                                buttonText: 'Botón 2',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/inicio_sesion');
                                },
                              ),
                            ),
                            Container(
                              width: 100, // Ancho del botón
                              child: ButtonWithBackgroundImage(
                                imagePath: imagesrc,
                                buttonText: 'Botón 3',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/inicio_sesion');
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Caja redondeada con texto y fila de botones
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // Color de fondo
                      borderRadius:
                          BorderRadius.circular(16.0), // Bordes redondeados
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8.0,
                          offset: Offset(0, 4),
                        ),
                      ], // Sombra para dar un efecto elevado
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Texto
                        Text(
                          'Social',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                            height: 16), // Espacio entre el texto y los botones

                        // Fila de 3 columnas
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100, // Ancho del botón
                              child: ButtonWithBackgroundImage(
                                imagePath: imagesrc,
                                buttonText: 'Botón 1',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/inicio_sesion');
                                },
                              ),
                            ),
                            Container(
                              width: 100, // Ancho del botón
                              child: ButtonWithBackgroundImage(
                                imagePath: imagesrc,
                                buttonText: 'Botón 2',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/inicio_sesion');
                                },
                              ),
                            ),
                            Container(
                              width: 100, // Ancho del botón
                              child: ButtonWithBackgroundImage(
                                imagePath: imagesrc,
                                buttonText: 'Botón 3',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/inicio_sesion');
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
            TextWidget(
                text: 'Diario emocional cuéntanos que causo este sentimiento '),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título (campo de texto sin borde inferior)
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Título',
                    fillColor: Colors.white, // Fondo blanco
                    filled: true,
                    border: InputBorder.none, // Sin borde
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0), // Margen interno
                  ),
                ),
                
                // Descripción (campo de texto sin borde superior)
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Descripción',
                    fillColor: Colors.white, // Fondo blanco
                    filled: true,
                    border: InputBorder.none, // Sin borde
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0), // Margen interno
                  ),
                  maxLines: 4, // Permite varias líneas en la descripción
                ),
              ],
            ),
            Button(
                buttonName: 'Continuar',
                buttonColor: colorButton,
                onPressed: () => Navigator.pushNamed(context, '/habitos')),
          ],
        ),
      ),
    );
  }
}
