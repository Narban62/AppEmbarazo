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
              imagesrc: 'assets/images/proyecto_de_vida/1.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Es un ejercicio necesario que debes realizar durante tu embarazo, ya que contribuirá a tu desarrollo integral y permitirá trazar las rutas para alcanzar tus metas.'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/2.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Tu proyecto de vida favorece el autoconocimiento y autocuidado.'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          Button(
            buttonName: 'Siguiente',
            buttonColor: colorButton,
            onPressed: () {
        Navigator.pushNamed(context, '/proyecto_vida_2');
        }),
        ])));
  }
}

void test() {
  print("test JOsue");
}
