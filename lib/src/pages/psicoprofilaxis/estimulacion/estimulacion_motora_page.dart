import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
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
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String video1 = 'videos/psicoprofilaxis/estimulacion/Motora1.mp4';
    const String video2 = 'videos/psicoprofilaxis/estimulacion/Motora2.mp4';

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Estimulación Motora',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:

                    'Técnicas y actividades desde las 20 semanas de gestación para promover el desarrollo neuromotor del feto. Estas incluyen paseos y ejercicios suaves que estimulan el sistema vestibular y el sentido del equilibrio del bebé.'),

            const ImagenWidget(
                imagesrc: 'assets/images/psicoprofilaxis/motora.jpeg',
                isPrincipal: false),
            const TextWidget(
                text:
                    'Actividad:   Baile (estimulación del movimiento), colocará música de su agrado (bachata), realiza movimientos circulares con tu cuerpo y con todos tus segmentos: cabeza, muñecas, codos, brazos, tobillos, piernas, cadera. Continúa bailando hasta sentirte relajada y libre de tensiones en todo este momento acaricie tu vientre.'),
            const HeaderWidget(
              text: 'Ejercicios:',
              color: colorButton,
              isSubtitle: true,
              showButton: false,
            ),

            VideoWidget(
              videoUrl: video1,
              videoImage: '',
              bgColor: bgVideoColor,
            ),
            //dar espacio
            const SizedBox(
              height: 20,
            ),
            VideoWidget(
              videoUrl: video2,
              videoImage: '',
              bgColor: bgVideoColor,
            )
          ],
        ),
      ),
    );
  }
}
