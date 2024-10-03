import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Color colorBackground = Color(0xffAEDAFE);
    Color colorButton = Color(0xff226EAD);

    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              color: colorBackground,
              text: 'Bienbenida a Wakuna',
              isSubtitle: false,
              showButton: false,
            ),
            ImagenWidget(
                imagesrc: 'assets/images/proyecto_de_vida/calidadVida2.jpg',
                isPrincipal: true),
            TextWidget(
              text:
                  '¡Unidas por el amor, fortaleciendo el vínculo. Aquí comienza tu hermoso viaje en familia.\n\n\nCaminemoa juntas en tu nueva historia.',
            ),
            Button(
                buttonName: 'Continuar',
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/registro');
                })
          ],
        ),
      ),
    );
  }
}
