import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionTactilPage extends StatefulWidget {
  const EstimulacionTactilPage({super.key});

  @override
  State<EstimulacionTactilPage> createState() => _EstimulacionTactilPageState();
}

class _EstimulacionTactilPageState extends State<EstimulacionTactilPage> {
  @override
  Widget build(BuildContext context) {
    const Color colorButton =  Color(0xffF75B89);
    const Color color =  Color(0xffFCDEE7);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String video = 'videos/psicoprofilaxis/estimulacion/Táctil.mp4';
    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Estimulación Táctil',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:

                    'Técnica que implica el uso de toques y masajes suaves sobre el vientre de una mujer embarazada con el objetivo de estimular al feto y promover su desarrollo sensorial y emocional. \nSe puede iniciar en el segundo trimestre del embarazo.'),

            const ImagenWidget(imagesrc: 'assets/images/psicoprofilaxis/tactil3.jpeg', isPrincipal: false),
            const TextWidget(text: "Actividad: Inicia apuntando tu vientre con la luz de la lámpara y díganle al bebé que van a contar.\n Primero digan uno y presionen una vez, como si estuvieran imprimiendo su mano en el vientre\n Luego digan dos y presionen dos veces en el mismo lado, pero sobre diferentes sitios.\n Con la lámpara de mano, apunten el lugar donde están presionando y sigan el trayecto de las presiones."),
            const HeaderWidget(
              text: 'Ejercicios:',
              color: colorButton,
              isSubtitle: true,
              showButton: false,
            ),

            VideoWidget(videoUrl: video,videoImage: '',bgColor: bgVideoColor,)
          ],
        ),
      ),
    );
  }
}
