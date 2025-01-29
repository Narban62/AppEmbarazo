import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SegundoTrimestrePage extends StatefulWidget {
  const SegundoTrimestrePage({super.key});

  @override
  State<SegundoTrimestrePage> createState() => _SegundoTrimestrePageState();
}

class _SegundoTrimestrePageState extends State<SegundoTrimestrePage> {
  @override
  Widget build(BuildContext context) {
    const String imagesrc = 'assets/images/psicoprofilaxis/Psico auditiva.jpg';
    return Scaffold(
      backgroundColor: const Color(0xffFFC5AA),
      body: SingleChildScrollView( // Agregado para evitar el overflow
        child: Column(
          children: [
            const HeaderWidget(
              color: Color(0xffFF8243),
              text: 'Segundo Trimestre',
              isSubtitle: true,
              showButton: false,
              textAlign: TextAlign.center,
            ),

            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),

            TextWidget(text: 'FRECUENCIA: Se recomienda que practiques ejercicio 2 a 4 veces a la semana.\nDURACIÓN: 20 a 30 minutos\nNIVEL DE IMPACTO: Bajo'),
            Button(
                buttonName: "Rutina de ejercicios",
                buttonColor: const Color(0xffFF8243),
                onPressed: () {
                  Navigator.pushNamed(context, '/segundo_home');
                }),
            
          ],
        ),
      ),
    );
  }
}