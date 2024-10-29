import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionVisualPage extends StatefulWidget {
  const EstimulacionVisualPage({super.key});

  @override
  State<EstimulacionVisualPage> createState() => _EstimulacionVisualPageState();
}

class _EstimulacionVisualPageState extends State<EstimulacionVisualPage> {
  @override
  Widget build(BuildContext context) {
    const Color colorButton =  Color(0xffF75B89);
    const Color color =  Color(0xffFCDEE7);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String video = 'videos/psicoprofilaxis/estimulacion/Visual.mp4';


    return Scaffold(
      backgroundColor:color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Estimulación Visual',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:
                    'Practica que ayuda al desarrollo visual de tu bebé, a tráves de luces y colores durante tu embarazo'),
            //ImagenWidget(imagesrc: 'imagesrc', isPrincipal: false),

            const HeaderWidget(
              text: 'Ejercicios:',
              color: colorButton,
              isSubtitle: true,
              showButton: false,
            ),

            VideoWidget(
              videoUrl: video,
              videoImage: '',
              bgColor: bgVideoColor,
              
            )
          ],
        ),
      ),
    );
  }
}
