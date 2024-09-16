import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RespiracionPage extends StatefulWidget {
  const RespiracionPage({super.key});

  @override
  State<RespiracionPage> createState() => _RespiracionPageState();
}

class _RespiracionPageState extends State<RespiracionPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffFCDEE7);
    return const Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
            child: Column(
          children: [
            HeaderWidget(
              text: 'Técnicas de respiración',
              color: color,
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(
                text:
                    'Hola, mamita, ¿Cómo estás?. \nEl día de hoy aprenderás cómo respirar para cuando empiece tu labor de parto.'),
            HeaderWidget(
              text: 'Respiración torácica:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            HeaderWidget(
              text: 'Respiración abdominal:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            HeaderWidget(
              text: 'Respiración combinada:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            HeaderWidget(
              text: 'Respiración limpiadora:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            HeaderWidget(
              text: 'Respiración moderada ritmica:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            HeaderWidget(
              text: 'Respiración jadeo:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
          ],
        )));
  }
}
