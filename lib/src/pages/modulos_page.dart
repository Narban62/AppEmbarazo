import 'package:flutter/material.dart';
import '../widgets/background_widget.dart';
import '../widgets/bubble_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/text_widget.dart';


class ModulosPage extends StatelessWidget {
  const ModulosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color _color1 = Color(0xffFCDEE7);

    return Scaffold(
      body: Stack(
        children: [
          const AnimatedBackground(color: _color1), // Fondo animado
          const AnimatedBubbles(), // Burbujas animadas
          Column(
            children: [
              const HeaderWidget(
                color: Color(0xffF75B89),
                text: 'Módulos',
                isSubtitle: false,
                showButton: false,
              ),
              const TextWidget(text: "Juntas hacia tu autocuidado"),
              Button(
                buttonName: "calidad de vida",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/calidad_vida');
                },
              ),
              Button(
                buttonName: "proyecto de vida",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/proyecto_vida');
                },
              ),
              Button(
                buttonName: "dieta",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta');
                },
              ),
              Button(
                buttonName: "actividad física",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/actividad_fisica');
                },
              ),
              Button(
                buttonName: "psicoprofilaxis",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/psicoprofilaxis');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
