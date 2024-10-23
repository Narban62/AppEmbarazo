import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProyectoVidaPage extends StatefulWidget {
  const ProyectoVidaPage({super.key});

  @override
  State<ProyectoVidaPage> createState() => _ProyectoVidaPageState();
}

class _ProyectoVidaPageState extends State<ProyectoVidaPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffB4FF9A);
    const Color colorButton = Color(0xff007900);
    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
            child: Column(children: [
          const HeaderWidget(
            color: colorButton,
            text: 'Proyecto de vida:\nMi proyecto de vida',
            isSubtitle: true,
            showButton: true,
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/calidadVida2.jpg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Es un ejercicio necesario para las adolescentes, ya que contribuye a su desarrollo integral y permite trazar las rutas para alcanzar las metas que se propongan.'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/Calidad de vida.jpg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'El proyecto de vida favorece el autoconocimiento y autocuidado a través de:'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          Button(
            buttonName: 'saltar',
            buttonColor: colorButton,
            onPressed: () {
        Navigator.pushNamed(context, '/info_proyecto_vida');
        }),
        ])));
  }
}

void test() {
  print("test JOsue");
}
