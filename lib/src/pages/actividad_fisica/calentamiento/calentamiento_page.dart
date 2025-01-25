import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class CalentamientoPage extends StatefulWidget {
  const CalentamientoPage({super.key});

  @override
  State<CalentamientoPage> createState() => _CalentamientoPageState();
}

class _CalentamientoPageState extends State<CalentamientoPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Calentamiento',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:
                    'Vamos a preparar tus músculos para ejercitarse \nRECUERDA REALIZAR LA RUTINA DE CALENTAMIENTO POR LO MENOS DURANTE 5 MINUTOS'),
            const ImagenWidget(
                imagesrc: 'assets/images/actividad_fisica/caminata2.jpeg',
                isPrincipal: false),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Button(
                        buttonName: 'Instrucciones',
                        buttonColor: colorButton,
                        onPressed: () {
                          Navigator.pushNamed(context, '/calentamiento_instrucciones');
                        },
                      ),
                    ),
                    const SizedBox(width: 10), // Espacio entre los botones
                    Expanded(
                      child: Button(
                        buttonName: 'Inicio',
                        buttonColor: colorButton,
                        onPressed: () {
                          Navigator.pushNamed(context, '/cronometro');
                        },
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
