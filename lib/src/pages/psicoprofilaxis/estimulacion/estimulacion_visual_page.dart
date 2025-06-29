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
            const TextWidget(text:
                    'Practica que ayuda al desarrollo visual de tu bebé, a tráves de luces y colores durante tu embarazo'),
            const ImagenWidget(imagesrc: 'assets/images/psicoprofilaxis/estimulacion visual2.jpeg', isPrincipal: false),
            const TextWidget(text: "Actividad: Hablándole a la altura del vientre. Apunte la luz a la mitad del abdomen de la madre y dígale: “se prende” manteniéndola así por cinco segundos. Luego apague la lámpara por otros cinco segundos, y avísele: “se apaga”. Se debe hacer esto en tres posiciones: arriba del vientre, en el centro y abajo; siguiendo una secuencia de 8 repeticiones. "),
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
