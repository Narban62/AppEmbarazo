import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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

    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';

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
            text: '¿Qué y cuándo debo realizarme los controles prenatales?',
            color: colorButton,
            isSubtitle: true,
            showButton: false),
        TextWidget(
            text:
                'Son acciones periódicas destinadas la prevención, diagnóstico y tratamiento de las mujeres embarazadas. Si presentas alguno de estos síntomas acude inmediatamente a tu centro de salud más cercano.'),
        ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
        Button(
            buttonName: 'Más información',
            buttonColor: colorButton,
            onPressed: () => Navigator.pushNamed(context, '/controles_prenatales')),
      ])),
    );
  }
}
