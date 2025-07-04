import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DietaPage extends StatefulWidget {
  const DietaPage({super.key});

  @override
  State<DietaPage> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaPage> {
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
                text: 'Cada bocado cuenta',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/dieta.jpeg', isPrincipal: true),
              const HeaderWidget(
                text: 'Alimentos:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                      'Navega trimestre a trimestre de tu embarazo con seguridad. Aquí detallamos los alimentos esenciales que debes disfrutar y los que debes evitar durante este maravilloso viaje antes de conocer a tu bebé.\nCada uno de nuestros consejos alimenticios está al alcance de tu paladar.'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10), // Espacio entre los botones
                    Expanded(
                      child: Button(
                        buttonName: 'Siguiente',
                        buttonColor: colorButton,
                        onPressed: () {
                          Navigator.pushNamed(context, '/dieta_navegacion');
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
