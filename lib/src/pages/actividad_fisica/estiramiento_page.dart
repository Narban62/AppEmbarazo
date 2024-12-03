import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EstiramientoPage extends StatefulWidget {
  const EstiramientoPage({super.key});

  @override
  State<EstiramientoPage> createState() => _EstiramientoPageState();
}

class _EstiramientoPageState extends State<EstiramientoPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoImage = '';
    const String brazo1 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/1 ESTIRAMIENTO DE BRAZO.mp4';
    const String brazo2 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/1 ESTIRAMIENTO DE BRAZO 2.mp4';
    const String cuadriceps =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/2 ESTIRAMIENTO DE CUÁDRICEPS.mp4';
    const String tobillos1 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/3 FLEXIÓN Y EXTENSIÓN DE TOBILLOS.mp4';
    const String tobillos2 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/3 FLEXIÓN Y EXTENSIÓn de tobillos 2.mp4';
    const String espalda =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/4 ESTIRAMIENTO DE ESPALDA.mp4';
    const String espladaCruzada =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/5 ESTIRAMIENTO CRUZADO DE ESPALDA.mp4';
    const String gato =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/6 MOVIMIENTO DE GATO.mp4';
    const String cuello =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/7 ESTIRAMIENDO DE CUELLO Y BRAZOS.mp4';

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
                    'El estiramiento es una práctica fundamental para mejorar la flexibilidad, reducir la tensión muscular y favorecer la recuperación tras una actividad física. Existen dos tipos principales de estiramientos: los dinámicos, ideales antes del ejercicio para activar los músculos y mejorar el rango de movimiento, y los estáticos, más apropiados al finalizar el entrenamiento para relajar el cuerpo.'),
            const ImagenWidget(
                imagesrc: 'assets/images/psicoprofilaxis/Psico auditiva.jpg',
                isPrincipal: false),
            const HeaderWidget(
              text: 'Ejercicios:',
              color: Color(0xffFCDEE7),
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(text: "1. Estiramiento de brazo"),
            VideoWidget(
              videoUrl: brazo1,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            VideoWidget(
              videoUrl: brazo2,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "2. Estiramiento de cuádriceps"),
            VideoWidget(
              videoUrl: cuadriceps,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "3. Flexión y extensión de tobillos"),
            VideoWidget(
              videoUrl: tobillos1,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            VideoWidget(
              videoUrl: tobillos2,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "4. Estiramiento de espalda"),
            VideoWidget(
              videoUrl: espalda,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "5. Estiramiento cruzado de espalda"),
            VideoWidget(
              videoUrl: espladaCruzada,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "6. Movimiento de gato"),
            VideoWidget(
              videoUrl: gato,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
            TextWidget(text: "7. Estiramientos de cuello y brazos"),
            VideoWidget(
              videoUrl: tobillos1,
              videoImage: videoImage,
              bgColor: bgVideoColor,
            ),
          ],
        ),
      ),
    );
  }
}
