import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCDEE7),
      body: Column(
        children: [
          const HeaderWidget(
            color: Color(0xffF75B89),
            text: 'Hola',
            isSubtitle: false,
            showButton: false,
          ),
          const ImagenWidget(
              imagesrc: 'assets/images/psicoprofilaxis/Psico 1.jpg',
              borderRadius: 15.0,
              isPrincipal: true),
          const TextWidget(
              text:
                  "¡Bienvenida a la aplicación, mamita! Estamos aquí para acompañarte y brindarte todo el apoyo necesario durante esta etapa tan especial. ¡Comencemos!"),
          Button(
              buttonName: "siguiente",
              buttonColor: const Color(0xffF75B89),
              onPressed: () {
                test();
              }),
        ],
      ),
    );
  }
}

void test() {
  print("test JOsue");
}
