import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_button_widget.dart';
import 'package:flutter/material.dart';

import '../../services/guardar_sentimiento.dart';
import '../../widgets/square_button.dart';

class MenteGuiaPage extends StatefulWidget {
  const MenteGuiaPage({super.key});

  @override
  State<MenteGuiaPage> createState() => _MenteGuiaPageState();
}

class _MenteGuiaPageState extends State<MenteGuiaPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              color: colorButton,
              text: 'Tu Mente guía: \n¿Cómo te sientes hoy?',
              isSubtitle: true,
              showButton: false,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/emociones/img_1.png',
                      text: 'Muy Feliz',
                      color: colorButton,
                      onPressed: () {
                        guardarSentimiento('Muy Feliz');
                        Navigator.pushNamed(context, '/diario');
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/emociones/img_2.png',
                      text: 'Feliz',
                      color: colorButton,
                      onPressed: () {
                        guardarSentimiento('Feliz');
                        Navigator.pushNamed(context, '/diario');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/emociones/img_3.png',
                      text: 'Normal',
                      color: colorButton,
                      onPressed: () {
                        guardarSentimiento('Normal');
                        Navigator.pushNamed(context, '/diario');
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/emociones/img_4.png',
                      text: 'Triste',
                      color: colorButton,
                      onPressed: () {
                        guardarSentimiento('Triste');
                        Navigator.pushNamed(context, '/diario');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox( // Mantiene el tamaño del botón sin expandirse
                    width: 150, // Tamaño deseado, o puedes usar `size`
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/emociones/img_5.png',
                      text: 'Muy Triste',
                      color: colorButton,
                      onPressed: () {
                        guardarSentimiento('Muy Triste');
                        Navigator.pushNamed(context, '/diario');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
