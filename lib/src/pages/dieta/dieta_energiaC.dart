import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DietaEnergia extends StatefulWidget {
  const DietaEnergia({super.key});

  @override
  State<DietaEnergia> createState() => _DietaEnergiaState();
}

class _DietaEnergiaState extends State<DietaEnergia> {
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
                text: 'Energía',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/Picture2.jpg', isPrincipal: true),
              const TextWidget(
                  text:
                      'Durante tu embarazo, los requerimientos de energía y nutrientes son necesarios para cubrir el crecimiento de los tejidos tuyos y de tu bebè y el incremento de gasto energético, debido al aumento del metabolismo basal y de la actividad física. '),
              const HeaderWidget(
                color: colorButton,
                text: 'IMportancia de la Energía',
                isSubtitle: true,
                showButton: true,
              ),
              const ImagenWidget(imagesrc: 'assets/images/dieta/Picture3.jpg', isPrincipal: false),
              const TextWidget(text: "1. La energía utilizada se va modificando a lo largo de tu embarazo."),
              const ImagenWidget(imagesrc: 'assets/images/dieta/Picture4.jpg', isPrincipal: false),
              const TextWidget(text: "2. El mayor aumento de peso se produce durante el segundo y tercer trimestres, a un promedio de 0,45 kg y de 0,40 kg por semana."),
              const ImagenWidget(imagesrc: 'assets/images/dieta/Picture5.png', isPrincipal: false),
              const TextWidget(text: "3. Con una pequeña ganancia de peso gestacional de 1,6 kg durante todo el primer trimestre. "),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
