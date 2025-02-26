import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/square_button.dart';

class CuepoMotorPage extends StatefulWidget {
  const CuepoMotorPage({super.key});

  @override
  State<CuepoMotorPage> createState() => _CuepoMotorPageState();
}

class _CuepoMotorPageState extends State<CuepoMotorPage> {
  @override
  Widget build(BuildContext context) {
    Color colorBg = const Color(0xffE7BAFF);
    Color colorButton = const Color(0xff734A91);

    const String imagesrc = 'assets/images/psicoprofilaxis/psico3.jpeg';

    return Scaffold(
      backgroundColor: const Color(0xffE7BAFF),
      body: SingleChildScrollView(
          child: Column(children: [
        HeaderWidget(
            text:
                '¿Por qué cambia tu cuerpo y tus emociones durante el embarazo?',
            color: colorButton,
            isSubtitle: true,
            showButton: false),
        ImagenWidget(
          imagesrc: imagesrc,
          isPrincipal: false,
        ),
        TextWidget(
            text:
                'El embarazo es un periodo de adaptación a una nueva situación en la que se producen cambios psicológicos y físicos ya que se forma y crece un bebé en tu interior. Tu bebé puede nacer sin complicaciones entre las 37 a 42 semanas o (280 días).'),
        Button(
            buttonName: 'Más información',
            buttonColor: colorButton,
            onPressed: () => Navigator.pushNamed(context, '/etapas_embarazo')),
        HeaderWidget(
            text: '¿Qué son los controles prenatales?',
            color: colorButton,
            isSubtitle: true,
            showButton: false),
        TextWidget(
            text:
                'Son acciones periódicas destinadas la prevención, diagnóstico y tratamiento de las mujeres embarazadas.'),

            TextWidget(
                text:
                'Si presentas alguno de estos síntomas acude inmediatamente a tu centro de salud más cercano:'),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/prenatales/img.png',
                      text: 'Ausencia de tu periodo menstrual',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/prenatales/img_1.png',
                      text: 'Nauseas y vómito',
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
                      imageSrc: 'assets/images/calidad_vida/prenatales/img_2.png',
                      text: 'Sensibilidad mamaria',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/prenatales/img_3.png',
                      text: 'Sangrado de implantación',
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
                      imageSrc: 'assets/images/calidad_vida/prenatales/img_4.png',
                      text: 'Orina frecuente',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/prenatales/img_5.png',
                      text: 'Sueño/cansancio',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),

        Button(
            buttonName: 'Más información',
            buttonColor: colorButton,
            onPressed: () => Navigator.pushNamed(context, '/controles_prenatales')),
      ])),
    );
  }
}
