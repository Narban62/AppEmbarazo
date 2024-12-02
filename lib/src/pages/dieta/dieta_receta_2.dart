import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DietaReceta2 extends StatefulWidget {
  const DietaReceta2({super.key});

  @override
  State<DietaReceta2> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaReceta2> {
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
                text: 'Dieta:\nCada bocado cuenta \nReceta 2',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/embutidos .jpg', isPrincipal: true),
              const HeaderWidget(
                text: '30 minutos',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                  'Informacion de los alimentos:\nEsta receta es beneficiosa, etc'),
              const TextWidget(
                  text:
                  'Ingredientes:\n-Carne\n-etc'),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10), // Espacio entre los botones
                    Expanded(
                      child: Button(
                        buttonName: 'Volver',
                        buttonColor: colorButton,
                        onPressed: () {
                          Navigator.pushNamed(context, '/dieta_recetas');
                        },
                      ),
                    ),
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
