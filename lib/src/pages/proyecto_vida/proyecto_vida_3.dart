import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProyectoVidaPage3 extends StatefulWidget {
  const ProyectoVidaPage3({super.key});

  @override
  State<ProyectoVidaPage3> createState() => _ProyectoVidaPageState();
}

class _ProyectoVidaPageState extends State<ProyectoVidaPage3> {
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
              imagesrc: 'assets/images/proyecto_de_vida/5.jpeg',
              isPrincipal: false),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const TextWidget(
              text:
                  'Todas las personas tenemos sueños y metas que desea mos alcanzar sin importar la edad o el momento en que nos encontremos'),
          const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          const ImagenWidget(
              imagesrc: 'assets/images/proyecto_de_vida/6.jpeg',
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
        Navigator.pushNamed(context, '/que_es_proyecto_vida');
        }),
        ])));
  }
}

void test() {
  print("test JOsue");
}
