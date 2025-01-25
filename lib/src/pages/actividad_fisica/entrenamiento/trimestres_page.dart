import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/button_widget.dart';
import '../../../widgets/header_widget.dart';
import '../../../widgets/text_widget.dart';

class TrimestresPage extends StatefulWidget {
  const TrimestresPage({super.key});

  @override
  State<TrimestresPage> createState() => _TrimestresPageState();
}

class _TrimestresPageState extends State<TrimestresPage> {
  @override
  Widget build(BuildContext context) {
    const String imagesrc = 'assets/images/actividad_fisica/ejercicio3.jpeg';
    return Scaffold(
      backgroundColor: const Color(0xffFCDEE7),
      body: SingleChildScrollView( // Agregado para evitar el overflow
        child: Column(
          children: [
            const HeaderWidget(
              color: Color(0xffF75B89),
              text: 'Entrenamiento',
              isSubtitle: true,
              showButton: false,
              textAlign: TextAlign.center,
            ),

            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),

            Button(
                buttonName: "Primer Trimestre",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/primer_trimestre');
                }),
            Button(
                buttonName: "Segundo Trimestre",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/segundo_trimestre');
                }),
            Button(
                buttonName: "Tercer Trimestre",
                buttonColor: const Color(0xffF75B89),
                onPressed: () {
                  Navigator.pushNamed(context, '/tercer_trimestre');
                }),
          ],
        ),
      ),
    );
  }
}
