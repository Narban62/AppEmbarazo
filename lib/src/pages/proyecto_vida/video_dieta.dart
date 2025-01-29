import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/video_widget_proyecto.dart';

class VideoDieta extends StatefulWidget {
  const VideoDieta({super.key});

  @override
  State<VideoDieta> createState() => _EstiramientoPageState();
}

class _EstiramientoPageState extends State<VideoDieta> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffd6f8ca);
    const Color colorButton = Color(0xff007900);
    const Color bgVideoColor = Color(0xffd6f8ca);
    const String videoImage = '';
    const String proyecto1 =
        'videos/proyecto_de_vida/video4958644746592454095.mp4';
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Experiencias de vida',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            VideoWidgetProyecto(
              videoUrl: proyecto1,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Button(
              buttonName: 'Siguiente',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/info_proyecto_vida');
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          ],
        ),
      ),
    );
  }
}
