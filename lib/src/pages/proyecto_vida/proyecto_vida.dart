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
    return const Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
            child: Column(children: [
          HeaderWidget(
            color: colorButton,
            text: 'Proyecto de vida:\nMi proyecto de vida',
            isSubtitle: true,
            showButton: true,
          ),
          //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
          
          TextWidget(
              text:
                  'Es un ejercicio necesario para las adolescentes, ya que contribuye a su desarrollo integral y permite trazar las rutas para alcanzar las metas que se propongan.'),
          //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
          TextWidget(
              text:
                  'El proyecto de vida favorece el autoconocimiento y autocuidado a través de:'),
          Button(
            buttonName: 'saltar',
            buttonColor: colorButton,
            onPressed: test,
          ),
        ])
        )
        );
  }
}

void test() {
  print("test JOsue");
}
