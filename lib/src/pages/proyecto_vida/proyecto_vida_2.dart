import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProyectoVidaPage2 extends StatefulWidget {
  const ProyectoVidaPage2({super.key});

  @override
  State<ProyectoVidaPage2> createState() => _ProyectoVidaPageState();
}

class _ProyectoVidaPageState extends State<ProyectoVidaPage2> {
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
            text: 'Mi proyecto de vida',
            isSubtitle: true,
            showButton: true,
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/3.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Es una oportunidad para reflexionar sobre lo que quieres para tu futuro. '
                      'Te permite poder imaginar cómo lograr sus metas y ser una persona positiva.'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/4.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Puedes  identificar barreras que retrasen el cumplimiento de tus objetivos, para mantener una actitud segura y lograr la autoconfianza.'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          Button(
            buttonName: 'Siguiente',
            buttonColor: colorButton,
            onPressed: () {
        Navigator.pushNamed(context, '/proyecto_vida_3');
        }),
        ])));
  }
}

void test() {
  print("test JOsue");
}
