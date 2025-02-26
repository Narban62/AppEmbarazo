import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CalidadVidaNPage0 extends StatefulWidget {
  const CalidadVidaNPage0({super.key});

  @override
  State<CalidadVidaNPage0> createState() => _CalidadVidaNPageState();
}

class _CalidadVidaNPageState extends State<CalidadVidaNPage0> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/calidad_vida/control/img.png';

    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(
                color: colorButton,
                text:
                    'Calidad de Vida',
                isSubtitle: true,
                showButton: true,
              ),
              ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
           
              const TextWidget(
                  text:
                      'La calidad de vida en las adolescentes '
                          'durante el embarazo busca minimizar '
                          'las alteraciones en tu autonomía, '
                          'siendo crucial, ya que los cambios '
                          'físicos, emocionales y sociales durante '
                          'esta etapa impactan significativamente '
                          'tu bienestar.'),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              Button(
                  buttonName: 'Siguiente',
                  buttonColor: colorButton,
                  onPressed: () => Navigator.pushNamed(context, '/calidad_vida')
                  ),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
