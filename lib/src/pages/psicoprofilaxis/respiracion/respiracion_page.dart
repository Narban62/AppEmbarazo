import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
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
    const Color buttonColor = Color(0xffF75B89);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoJBB = 'videos/psicoprofilaxis/respiracion/Jadeo Boca boca.mp4';
    const String videoJNB = 'videos/psicoprofilaxis/respiracion/Jadeo Nariz Boca.mp4';
    const String videoJNN = 'videos/psicoprofilaxis/respiracion/Jadeo Nariz Nariz.mp4';
    const String videoRN = 'videos/psicoprofilaxis/respiracion/Respiración normal.mp4';
    const String videoRP = 'videos/psicoprofilaxis/respiracion/Respiración pausada.mp4';
    const String videoRPro = 'videos/psicoprofilaxis/respiracion/Respiración profunda.mp4';
    const String videoRPro1 = 'videos/psicoprofilaxis/respiracion/Respiración profunda1.mp4';

    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
            child: Column(
          children: [
            const HeaderWidget(
              text: 'Técnicas de respiración',
              color: buttonColor,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:
                    'Hola, mamita, ¿Cómo estás?. \nEl día de hoy aprenderás cómo respirar para cuando empiece tu labor de parto.'),
            const HeaderWidget(
              text: 'Respiración normal:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            VideoWidget(
              videoUrl: videoRN,
              videoImage: '',
              bgColor: bgVideoColor,
            ),

            const HeaderWidget(
              text: 'Respiración pausada:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            VideoWidget(
              videoUrl: videoRP,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            const HeaderWidget(
              text: 'Respiración profunda:',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            VideoWidget(
              videoUrl: videoRPro,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            VideoWidget(
              videoUrl: videoRPro1,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            const HeaderWidget(
              text: 'Jadeo (boca-boca):',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            VideoWidget(
              videoUrl: videoJBB,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            const HeaderWidget(
              text: 'Jadeo (nariz-boca):',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            VideoWidget(
              videoUrl: videoJNB,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            const HeaderWidget(
              text: 'Jadeo (nariz-nariz):',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            VideoWidget(
              videoUrl: videoJNN,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            Padding(padding: const EdgeInsets.all(20)),
          ],
          
        )));
  }
}
