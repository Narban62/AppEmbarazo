import 'package:flutter/material.dart';
import '../../widgets/background_widget.dart';
import '../../widgets/bubble_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/header_widget.dart';
import '../../widgets/text_widget.dart';


class DietaNavegacion extends StatelessWidget {
  const DietaNavegacion({Key? key}) : super(key: key);

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
                color: color,
                text: 'Módulos',
                isSubtitle: false,
                showButton: false,
              ),
              const TextWidget(text: "Juntas hacia tu autocuidado"),
              Button(
                buttonName: "Información nutricional",
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta_nutricional');
                },
              ),
              Button(
                buttonName: "Alimentos a evitar",
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta_evitar');
                },
              ),
              Button(
                buttonName: "Recetas saludables",
                buttonColor: colorButton,
                onPressed: () {

                  Navigator.pushNamed(context, '/plan_dieta');
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
