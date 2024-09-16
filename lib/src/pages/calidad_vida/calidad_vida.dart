import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CalidadVidaPage extends StatefulWidget {
  const CalidadVidaPage({super.key});

  @override
  State<CalidadVidaPage> createState() => _CalidadVidaPageState();
}

class _CalidadVidaPageState extends State<CalidadVidaPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);

    return const Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                color: colorButton,
                text: 'Actividad física:\nVamos a ejercitar',
                isSubtitle: true,
                showButton: false,
              ),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              HeaderWidget(
                text: 'Ejercicios durante el embarazo:',
                color: color,
                isSubtitle: true,
              ),
              TextWidget(
                  text:
                      'Descubre los ejercicios adecuados y seguros para cada trimestre de tu embarazo.\nRecuerda que, si tu embarazo transcurre sin problemas y sin contraindicaciones médicas, el ejercicio físico es altamente recomendado para tu salud y la de tu bebé.\nNo te preocupes si antes del embarazo no acostumbrabas ejercitarte; esta puede ser una oportunidad para hacer cambios positivos en tu vida.'),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              HeaderWidget(
                text: 'Prepara tu cuerpo:',
                color: color,
                isSubtitle: true,
              ),
              TextWidget(
                  text:
                      'Durante el embarazo, es fundamental mantenerse activa físicamente para el bienestar tanto de la madre como del bebé.\nEs posible que, a medida que avanza tu embarazo, necesites modificar el tipo de actividad física según tu condición.\nAquí te guiaremos paso a paso de manera segura.'),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              HeaderWidget(
                text: 'Antes de iniciar:',
                color: color,
                isSubtitle: true,
              ),
              TextWidget(
                  text:
                      'Realizaremos una serie de preguntas para asegurarnos de que puedes iniciar la actividad física sin problema.'),

              Button(
                buttonName: 'siguiente',
                buttonColor: colorButton,
                onPressed: test,
              ),
            ],
          ),
        )
      );
  }
}

void test() {
  print("test JOsue");
}
