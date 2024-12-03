import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class CalentamientoPage extends StatefulWidget {
  const CalentamientoPage({super.key});

  @override
  State<CalentamientoPage> createState() => _CalentamientoPageState();
}

class _CalentamientoPageState extends State<CalentamientoPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoImage = '';
    const String hombros =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/1 ROTACIÓN DE HOMBROS.mp4';
    const String brazos =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/2 ELEVACIÓN DE BRAZOS.mp4';
    const String rotBrazos =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/3 ROTACIÓN DE BRAZOS.mp4';
    const String cuello =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/4 FLEXIÓN DE CUELLO.mp4';
    const String cadera =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/5 ROTACIÓN DE CADERA.mp4';
    const String piernas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/6 ELEVACIÓN DE PIERNAS.mp4';
    const String crucePiernas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/7 CRUCE DE PIERNAS.mp4';
    const String sentadillas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/8 SENTADILLAS Y ELEVACIÓN DE RODILLA.mp4';
    const String estiramientoPiernas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/9 ESTIRAMIENTO DE PIERNAS.mp4';  

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Estiramientos',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:
                    'El calentamiento es una parte esencial de cualquier actividad física. Su objetivo principal es preparar el cuerpo para el esfuerzo físico, aumentando progresivamente la temperatura corporal, el flujo sanguíneo hacia los músculos y la movilidad articular. Además, ayuda a prevenir lesiones al reducir la rigidez muscular y mejorar la coordinación.'),
            const ImagenWidget(
                imagesrc: 'assets/images/psicoprofilaxis/Psico auditiva.jpg',
                isPrincipal: false),
            const HeaderWidget(
              text: 'Ejercicios:',
              color: Color(0xffFCDEE7),
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(text: "1. Rotación de hombros"),
            VideoWidget(
              videoUrl: hombros,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "2. Elevación de brazos"),
            VideoWidget(
              videoUrl: brazos,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "3. Rotación de brazos"),
            VideoWidget(
              videoUrl: rotBrazos,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),

            TextWidget(text: "4. Flexión de cuello"),
            VideoWidget(
              videoUrl: cuello,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "5. Rotación de cadera"),
            VideoWidget(
              videoUrl: cadera,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "6. Elevación de piernas"),
            VideoWidget(
              videoUrl:   piernas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "7. Cruce de piernas"),
            VideoWidget(
              videoUrl: crucePiernas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "8. Sentadillas y elevación de rodilla"),
            VideoWidget(
              videoUrl: sentadillas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "9. Estiramiento de piernas"),
            VideoWidget(
              videoUrl: estiramientoPiernas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
          ],
        ),
      ),
    );
  }
}
