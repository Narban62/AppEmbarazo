import 'package:app_embarazo/src/pages/inicio_sesion_registro/terminos_condiciones_page.dart';
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
    Color colorBackground = Color.fromARGB(255, 241, 218, 180);
    Color colorButton = Color.fromARGB(255, 223, 147, 24);

    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              color: colorBackground,
              text: 'Bienvenida a Wakuna',
              isSubtitle: false,
              showButton: false,
            ),
            ImagenWidget(
                imagesrc: 'assets/images/Test.jpeg',
                isPrincipal: true),
            TextWidget(
              text:
                  '¡Unidas por el amor, fortaleciendo el vínculo. Aquí comienza tu hermoso viaje en familia.\n\n\nCaminemoa juntas en tu nueva historia.',
            ),
            Button(
                buttonName: 'Continuar',
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TerminosCondicionesPaget()), // Cambiar por la pantalla deseada
                  );
                })
          ],
        ),
      ),
    );
  }
}
