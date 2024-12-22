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
                text: 'Dieta:\nCada bocado cuenta \nEmbutidos',
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
                  'Esta es toda la informacion acerca de los embutidos'),
              ButtonBack(
                text: 'Volver',
                backgroundColor: colorButton, // Cambia el color según sea necesario
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta_navegacion');
                },
              ),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
