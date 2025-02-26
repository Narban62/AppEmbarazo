import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TercerTrimestrePage extends StatefulWidget {
  const TercerTrimestrePage({super.key});

  @override
  State<TercerTrimestrePage> createState() => _TercerTrimestrePageState();
}

class _TercerTrimestrePageState extends State<TercerTrimestrePage> {
  @override
  Widget build(BuildContext context) {
    const String imagesrc = 'assets/images/actividad_fisica/tercer_trimestre/img.png';
    return Scaffold(
      backgroundColor: const Color(0xffFFC5AA),
      body: SingleChildScrollView( // Agregado para evitar el overflow
        child: Column(
          children: [
            const HeaderWidget(
              color: Color(0xffFF8243),
              text: 'Tercer Trimestre',
              isSubtitle: true,
              showButton: false,
              textAlign: TextAlign.center,
            ),

            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),

            TextWidget(text: 'FRECUENCIA: Se recomienda que practiques ejercicio 2 a 3 veces a la semana.\nDURACIÓN: 30 minutos\nNIVEL DE IMPACTO: Muy bajo y evitar tiempos prolongados de pie.'),
            Button(
                buttonName: "Rutina de ejercicios",
                buttonColor: const Color(0xffFF8243),
                onPressed: () {
                  Navigator.pushNamed(context, '/tercer_home');
                }),
            
          ],
        ),
      ),
    );
  }
}