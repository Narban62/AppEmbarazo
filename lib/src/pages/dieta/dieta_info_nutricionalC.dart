import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/background_widget.dart';
import '../../widgets/bubble_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/header_widget.dart';
import '../../widgets/text_widget.dart';


class DietaInfoNutricional extends StatelessWidget {
  const DietaInfoNutricional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffAEDAFE);
    const Color colorButton = Color(0xff226EAD);

    return Scaffold(
      body: Stack(
        children: [
          const AnimatedBackground(color: color), // Fondo animado
          const AnimatedBubbles(),
          SingleChildScrollView(// Burbujas animadas
          child: Column(
            children: [
              const HeaderWidget(
                text: "Requerimientos de nutrientes específicos durante el embarazo",
                  color: color,
                  isSubtitle: true,),

              const ImagenWidget(imagesrc: 'assets/images/dieta/Picture1.jpg', isPrincipal: true),

              Button(
                buttonName: "Energía",
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta_energia');
                },
              ),
              Button(
                buttonName: "Macronutrientes",
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta_nutricional');
                },
              ),
              Button(
                buttonName: "micronutrientes",
                buttonColor: colorButton,
                onPressed: () {

                  Navigator.pushNamed(context, '/micronutrientes');
                },
              ),

            ],
          ),
          ),
        ],
      ),
    );
  }
}
