import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionAuditivaPage extends StatefulWidget {
  const EstimulacionAuditivaPage({super.key});

  @override
  State<EstimulacionAuditivaPage> createState() => _EstimulacionAuditivaPageState();
}

class _EstimulacionAuditivaPageState extends State<EstimulacionAuditivaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFCDEE7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: 'Estimulación Auditiva',
              color: Color(0xffFCDEE7),
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(
                text:
                    'Exponer al feto a estímulos auditivos, como música y la voz materna, a partir del quinto o sexto mes de embarazo, estimula su cerebro y favorece el desarrollo del lenguaje y la creatividad.'),
            ImagenWidget(imagesrc: 'assets/images/psicoprofilaxis/Psico auditiva.jpg', isPrincipal: false),
            
            HeaderWidget(text: 'Ejercicios:', color: Color(0xffFCDEE7), isSubtitle: true, showButton: false,)
          ],
        ),
      ),
    );
  }
}
