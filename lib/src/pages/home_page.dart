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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              color: Color(0xffF75B89),
              text: 'Hola',
              isSubtitle: false,
              showButton: false,
            ),
            const ImagenWidget(
              imagesrc:
                  'https://firebasestorage.googleapis.com/v0/b/test-drive-fc508.appspot.com/o/Prueba%20de%20logo.webp?alt=media&token=eabe6e2e-d892-474a-8b33-2df84b9a30a4', // Firebase URL o local
              borderRadius: 15.0,
              isPrincipal: true,
            ),
            const TextWidget(
                text:
                    "¡Bienvenida a la aplicación, mamita! Estamos aquí para acompañarte y brindarte todo el apoyo necesario durante esta etapa tan especial. ¡Comencemos!"),
            Button(
                buttonName: "siguiente",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/modulos');
                }),
          ],
        ),
      ),
    );
  }
}

void test() {
  print("test JOsue");
}
