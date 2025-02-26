import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EstiramientoHomePage extends StatefulWidget {
  const EstiramientoHomePage({super.key});

  @override
  State<EstiramientoHomePage> createState() => _EstiramientoHomePageState();
}

class _EstiramientoHomePageState extends State<EstiramientoHomePage> {
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
              text: 'Ejecicios de estiramiento',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const ImagenWidget(
                imagesrc: 'assets/images/actividad_fisica/estirar.jpeg',
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
                          Navigator.pushNamed(context, '/estiramientos_instrucciones');
                        },
                      ),
                    ),
                    const SizedBox(width: 10), // Espacio entre los botones

                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
