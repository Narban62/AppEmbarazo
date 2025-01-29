import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DietaMarisco extends StatefulWidget {
  const DietaMarisco({super.key});

  @override
  State<DietaMarisco> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaMarisco> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffAEDAFE);
    const Color colorButton = Color(0xff226EAD);

    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(
                color: colorButton,
                text: 'No comas marisco crudo, ni smilares',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/pescado y marisco crudo.jpg', isPrincipal: true),
              const HeaderWidget(
                text: 'Información:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                  'Algunos pescados y mariscos contienen niveles potencialmente dañinos de mercurio. Demasiado mercurio podría dañar el sistema nervioso en desarrollo de tu  bebé.'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10), // Espacio entre los botones
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
