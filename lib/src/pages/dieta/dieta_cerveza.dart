import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DietaCerveza extends StatefulWidget {
  const DietaCerveza({super.key});

  @override
  State<DietaCerveza> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaCerveza> {
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
                text: 'No consumas alcohol',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/cerveza.jpeg', isPrincipal: true),
              const HeaderWidget(
                text: 'Información:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                  'Beber alcohol durante el embarazo conlleva un mayor riesgo de aborto espontáneo y muerte fetal intrauterina. El consumo de alcohol también puede ocasionar el síndrome alcohólico fetal. Este síndrome puede hacer que la cara no se forme correctamente y que el nivel de inteligencia sea inferior.'),
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
