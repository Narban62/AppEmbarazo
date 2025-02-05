import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DietaCafeina extends StatefulWidget {
  const DietaCafeina({super.key});

  @override
  State<DietaCafeina> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaCafeina> {
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
                text: 'No bebas demasiado cafeína',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/cafe.jpeg', isPrincipal: true),
              const HeaderWidget(
                text: 'Información:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                  'Limita la cafeína a menos de 200 miligramos (mg) al día. Una taza de 8 onzas (240 mililitros, o ml) de café filtrado contiene alrededor de 95 mg de cafeína, esto puede producir un aumento de los latidos de tu corazón y bajo peso al nacer de tu bebé.'),
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
