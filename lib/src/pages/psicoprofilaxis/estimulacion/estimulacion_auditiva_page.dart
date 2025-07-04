import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionAuditivaPage extends StatefulWidget {
  const EstimulacionAuditivaPage({super.key});

  @override
  State<EstimulacionAuditivaPage> createState() => _EstimulacionAuditivaPageState();
}

class _EstimulacionAuditivaPageState extends State<EstimulacionAuditivaPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFCDEE7);
    const Color colorButton = Color(0xffF75B89);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoImage = '';
    const String video1 = 'videos/psicoprofilaxis/estimulacion/Auditiva1.mp4';
    const String video2 = 'videos/psicoprofilaxis/estimulacion/Auditiva2-Padre.mp4';
    
    return Scaffold(
      backgroundColor: bgColor,
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Estimulación Auditiva',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            const TextWidget(
                text:

                    'Exponer al feto a estímulos auditivos, como música y la voz materna, a partir del quinto o sexto mes de embarazo, estimula su cerebro y favorece el desarrollo del lenguaje y la creatividad.'),

            const ImagenWidget(imagesrc: 'assets/images/psicoprofilaxis/auditiva.jpeg', isPrincipal: false),
            const TextWidget(text: "Actividad: Puedes cantarle a tu bebé, leerle cuentos, ponerle música suave y hablarle con amor. \nTambién puedes pedirle a tu pareja que hable con el bebé, para que se vaya familiarizando con su voz."),
            const HeaderWidget(text: 'Ejercicios:', color: Color(0xffFCDEE7), isSubtitle: true, showButton: false,),
            VideoWidget(videoUrl:video1 ,videoImage: videoImage,bgColor: bgVideoColor,),
            //espacio
            const SizedBox(height: 20),
            VideoWidget(videoUrl:video2 ,videoImage: videoImage,bgColor: bgVideoColor,)
          ],
        ),
      ),
    );
  }
}
