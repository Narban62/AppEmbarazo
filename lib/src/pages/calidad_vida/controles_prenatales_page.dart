import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/square_button.dart';

class ControlesPrenatalesPage extends StatefulWidget {
  const ControlesPrenatalesPage({super.key});

  @override
  State<ControlesPrenatalesPage> createState() =>
      _ControlesPrenatalesPageState();
}

class _ControlesPrenatalesPageState extends State<ControlesPrenatalesPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';

    List<String> profesionales = [
      'Médico Gineco-Obstetra/Ostetriz',
      'Enfermería',
      'Odontología',
      'Nutricionista'
    ];

    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderWidget(
              color: colorButton,
              text: '¿Cuándo debo acudir a mi control prenatal?',
              isSubtitle: true,
            ),
            TextWidget(
                text:
                    'El primer control debes realizarlo lo más pronto posible. '),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/salud.jpeg',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Cada 4 semanas. \nHasta las 28 semanas de embarazo.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/control/img_1.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Cada 2 semanas. \nDesde las 28 hasta las 36 semanas de embarazo.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/control/img_2.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Una vez por semana. \nDesde la semana 36 hasta el nacimiento de tú bebé.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            TextWidget(
                text:
                    'Recuerda que debes realizarte mínimo 5 controles prenatales para evitar complicaciones con tú bebé.'),
            TextWidget(text: '¿Qué profesionales debo consultar?'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: profesionales.asMap().entries.map((entry) {
                  int index = entry.key;
                  String profesion = entry.value;
                  return Text(
                    '${index + 1}. $profesion',
                    style: TextStyle(fontSize: 16.0),
                  );
                }).toList(),
              ),
            ),
            ImagenWidget(imagesrc: 'assets/images/calidad_vida/control/img_3.png', isPrincipal: false),
            TextWidget(
                text:
                    '¿Qué exámenes me deben realizar?'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/control/img_5.png',
                      text: 'Ecografía',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/control/img_6.png',
                      text: 'Análisis de sangre y orina',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),

            TextWidget(text: '¿Cuáles son los factores de riesgo que puedo modificar?'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/control/img_7.png',
                      text: 'No alcohol',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/control/img_8.png',
                      text: 'Controlar alimentación',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/control/img_9.png',
                      text: 'No drogas',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/control/img_10.png',
                      text: 'Evitar ejercicio extenuante',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Primera fila de tres columnas

            TextWidget(text: '¿Cuáles son los factores de riesgo que NO puedo modificar? '),
            // Primera fila de tres columnas  
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 250,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/control/img_12.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Menores de 18 años',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 120,
                        height: 250,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/control/img_13.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Talla < 1.45',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/control/img_14.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Malnutrición',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            TextWidget(text: 'Recuerda: nos amamos, nos queremos y somos únicas. Tu eres valiosa tal y como eres y tu bebe te ama por eso.'),
          ImagenWidget(imagesrc: 'assets/images/calidad_vida/control/img_15.png', isPrincipal: true),

          Button(buttonName: 'REGISTRA TU NUEVO CONTROL', buttonColor: colorButton, onPressed: ()=> Navigator.pushNamed(context, '/calendario')),
          ]),
        ));
  }
}

void test(){
  print("test JOsue");
}