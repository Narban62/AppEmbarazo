import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_back.dart';

class DietaEmbutidos extends StatefulWidget {
  const DietaEmbutidos({super.key});

  @override
  State<DietaEmbutidos> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaEmbutidos> {
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
                text: 'No comas embutidos, ni similares',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/embutidos .jpg', isPrincipal: true),
              const HeaderWidget(
                text: 'Información:',
                color: color,
                isSubtitle: true,
              ),
              const TextWidget(
                  text:
                  'Durante el embarazo, tienes mayor riesgo de sufrir una intoxicación alimentaria a causa de las bacterias. Es una enfermedad transmitida por los alimentos.'),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
