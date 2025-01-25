import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
            ImagenWidget(imagesrc: 'assets/images/calidad_vida/salud.jpeg', isPrincipal: false),
            TextWidget(
                text:
                    'Recuerda que debes realizarte mínimo 5 controles prenatales para evitar complicaciones con tu bebé.'),
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
            ImagenWidget(imagesrc: 'assets/images/calidad_vida/consulta medica.jpeg', isPrincipal: false),
            TextWidget(
                text:
                    '¿Qué exámenes me deben realizar?'),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                ],
              ),
            ),
            TextWidget(text: '¿Cuáles son los factores de riesgo que puedo modificar?'),

            // Primera fila de tres columnas
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                ],
              ),
            ),
            // Segunda fila de tres columnas
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                ],
              ),
            ),
            TextWidget(text: '¿Cuáles son los factores de riesgo que NO puedo modificar? '),
            // Primera fila de tres columnas  
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
                    ),
                  ),
                ],
              ),
            ),

          Button(buttonName: 'REGISTRA TU NUEVO CONTROL', buttonColor: colorButton, onPressed: ()=> Navigator.pushNamed(context, '/calendario')),
          ]),
        ));
  }
}

void test(){
  print("test JOsue");
}