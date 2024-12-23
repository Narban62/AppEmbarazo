import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class SegundoHomePage extends StatefulWidget {
  const SegundoHomePage({super.key});

  @override
  State<SegundoHomePage> createState() => _SegundoHomePageState();
}

class _SegundoHomePageState extends State<SegundoHomePage> {
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
              text: 'Ejercicios recomendados',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
           
            const ImagenWidget(
                imagesrc: 'assets/images/psicoprofilaxis/Psico auditiva.jpg',
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
                          Navigator.pushNamed(context, '/segundo_instrucciones');
                        },
                      ),
                    ),
                    const SizedBox(width: 10), // Espacio entre los botones
                    Expanded(
                      child: Button(
                        buttonName: 'Inicio',
                        buttonColor: colorButton,
                        onPressed: () {
                          Navigator.pushNamed(context, '/calentamiento_instrucciones');
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
