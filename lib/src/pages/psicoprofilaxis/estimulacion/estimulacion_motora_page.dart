import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionMotoraPage extends StatefulWidget {
  const EstimulacionMotoraPage({super.key});

  @override
  State<EstimulacionMotoraPage> createState() => _EstimulacionMotoraPageState();
}

class _EstimulacionMotoraPageState extends State<EstimulacionMotoraPage> {
  @override
  Widget build(BuildContext context) {
    const Color colorButton = Color(0xffF75B89);
    const Color color = Color(0xffFCDEE7);

    return const Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: 'Estimulación Motora              ',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(
                text:
                    'Técnicas y actividades desde las 20 semanas de gestación para promover el desarrollo neuromotor del feto. Estas incluyen paseos y ejercicios suaves que estimulan el sistema vestibular y el sentido del equilibrio del bebé.'),
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
