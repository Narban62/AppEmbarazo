import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProyectoVidaPage4 extends StatefulWidget {
  const ProyectoVidaPage4({super.key});

  @override
  State<ProyectoVidaPage4> createState() => _ProyectoVidaPageState();
}

class _ProyectoVidaPageState extends State<ProyectoVidaPage4> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffd6f8ca);
    const Color colorButton = Color(0xff007900);
    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
            child: Column(children: [
          const HeaderWidget(
            color: colorButton,
            text: '¿Qué es un proyecto de vida?',
            isSubtitle: true,
            showButton: true,
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/8.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Es un plan que construyen las personas sobre lo que quiere hacer en el presente y futuro, para alcanzar sus metas. '
                      'Tanto en los aspectos personales más íntimos como en los que tienen que ver con los demás.'),

              const HeaderWidget(
                color: colorButton,
                text: '¿Para qué te sirve el proyecto de vida?',
                isSubtitle: true,
                showButton: true,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/7.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Pensar en el futuro es algo que todos lo hacemos , ya que de esta manera nos ayuda a planificar nuestras metas.'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          Button(
            buttonName: 'Siguiente',
            buttonColor: colorButton,
            onPressed: () {
        Navigator.pushNamed(context, '/info_que_es_proyecto_vida');
        }),
        ])));
  }
}

void test() {
  print("test JOsue");
}
