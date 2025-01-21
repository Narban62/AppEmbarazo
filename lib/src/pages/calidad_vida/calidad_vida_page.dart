import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CalidadVidaNPage extends StatefulWidget {
  const CalidadVidaNPage({super.key});

  @override
  State<CalidadVidaNPage> createState() => _CalidadVidaNPageState();
}

class _CalidadVidaNPageState extends State<CalidadVidaNPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';
    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(
                color: colorButton,
                text:
                    'Paso a paso mediante tus controles prenatales:  \nCuerpo y Mente sanos para ti y tu bebé.',
                isSubtitle: true,
                showButton: true,
              ),
              ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
           
              const TextWidget(
                  text:
                      'Cada cambio es una señal de tu fuerza y amor en crecimiento. Confía en ti misma y en el hermoso camino que estás recorriendo.'),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              Button(
                  buttonName: 'tu cuerpo tu motor de vida',
                  buttonColor: colorButton,
                  onPressed: () => Navigator.pushNamed(context, '/cuerpo_motor')
                  ),
              Button(
                  buttonName: 'tu mente tu guía',
                  buttonColor: colorButton,
                  onPressed: () => Navigator.pushNamed(context, '/mente_guia')
                  ),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
