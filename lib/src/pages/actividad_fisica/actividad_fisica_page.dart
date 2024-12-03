import 'package:app_embarazo/src/widgets/bottom_nav_widget.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ActividadFisicaPage extends StatefulWidget {
  const ActividadFisicaPage({super.key});

  @override
  State<ActividadFisicaPage> createState() => _ActividadFisicaPageState();
}

class _ActividadFisicaPageState extends State<ActividadFisicaPage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);

    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(
                color: colorButton,
                text: 'Actividad física:\nVamos a ejercitar',
                isSubtitle: true,
                showButton: true,
              ),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              const HeaderWidget(
                text: 'Ejercicios durante el embarazo:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                      'Descubre los ejercicios adecuados y seguros para cada trimestre de tu embarazo.\nRecuerda que, si tu embarazo transcurre sin problemas y sin contraindicaciones médicas, el ejercicio físico es altamente recomendado para tu salud y la de tu bebé.\nNo te preocupes si antes del embarazo no acostumbrabas ejercitarte; esta puede ser una oportunidad para hacer cambios positivos en tu vida.'),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              const HeaderWidget(
                text: 'Prepara tu cuerpo:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                      'Durante el embarazo, es fundamental mantenerse activa físicamente para el bienestar tanto de la madre como del bebé.\nEs posible que, a medida que avanza tu embarazo, necesites modificar el tipo de actividad física según tu condición.\nAquí te guiaremos paso a paso de manera segura.'),
              //ImagenWidget(imagesrc: imagesrc, isPrincipal: isPrincipal),
              const HeaderWidget(
                text: 'Antes de iniciar:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                      'Realizaremos una serie de preguntas para asegurarnos de que puedes iniciar la actividad física sin problema.'),

              Button(
                buttonName: 'siguiente',
                buttonColor: colorButton,
                onPressed: () => Navigator.pushNamed(context, '/advertencias'),
              ),
              BottomNavWidget(
                currentIndex: _currentIndex,
                onItemTapped: _onItemTapped,
              )
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
