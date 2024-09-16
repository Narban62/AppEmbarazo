import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionTactilPage extends StatefulWidget {
  const EstimulacionTactilPage({super.key});

  @override
  State<EstimulacionTactilPage> createState() => _EstimulacionTactilPageState();
}

class _EstimulacionTactilPageState extends State<EstimulacionTactilPage> {
  @override
  Widget build(BuildContext context) {
    const Color colorButton =  Color(0xffF75B89);
    const Color color =  Color(0xffFCDEE7);

    return const Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: 'Estimulación Táctil',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(
                text:
                    'Técnica que implica el uso de toques y masajes suaves sobre el vientre de una mujer embarazada con el objetivo de estimular al feto y promover su desarrollo sensorial y emocional. \nSe puede iniciar en el segundo trimestre del embarazo.'),
            //ImagenWidget(imagesrc: 'imagesrc', isPrincipal: false),

            HeaderWidget(
              text: 'Ejercicios:',
              color: colorButton,
              isSubtitle: true,
              showButton: false,
            )
          ],
        ),
      ),
    );
  }
}
