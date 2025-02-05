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
              description: "* Es  un proceso involuntario que permite la entrada de oxígeno al cuerpo y la expulsión de dióxido de carbono. Dentro de las que podemos encontrar:\n* En condiciones de reposo, la respiración debe ser suave y controlada, inhalando y exhalando  ritmicamente y sin esfuerzo excesivo.\n* Abdominal: La respiración debe dirigirse principalmente al abdomen, permitiendo una mayor expansión pulmonar y mejor oxigenación.",
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
              description: "Ayuda a las mujeres durante el trabajo de parto, facilitando la relajación y el manejo del dolor. \nCaracterísticas de la Respiración Pausada\nControl del Ritmo: implica inhalar lentamente por la nariz y exhalar suavemente por la boca. Este control del ritmo respiratorio ayuda a mantener la calma y a reducir la ansiedad durante las contracciones.nfoque en la Relajación: Al concentrarse en una respiración más lenta y profunda, se promueve un estado de relajación que puede disminuir la percepción del dolor.\nOxigenación Adecuada: permite un mejor intercambio de gases, asegurando que tu y tu bebé reciban suficiente oxígeno durante el trabajo de parto.\nTécnicas de Respiración Pausada\nRespiración Abdominal:  Inhala profundamente por la nariz, permitiendo que el abdomen se expanda, y exhalar lentamente por la boca.\nBeneficios: Ayuda a relajar el cuerpo entre contracciones y mejora la oxigenación de tu bebè.",
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

            //espacio
            Padding(padding: const EdgeInsets.all(20)),
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
              description: "Durante el Trabajo de Parto\nEsta técnica te ayudarà a manejar el dolor y a mantener la calma, evitando la hiperventilación y promoviendo una adecuada oxigenación.\nCaracterísticas de la Respiración de Jadeo\nInhalación y Exhalación Controladas: Consiste en inhalar por la nariz y exhalar por la boca en ráfagas cortas y rápidas, similar al jadeo. Esto se puede realizar siguiendo patrones como: nariz-boca-boca o nariz-nariz-boca-boca.\nRitmo Constante: Mantener un ritmo constante es crucial para evitar el aumento de la ansiedad y el estrés durante las contracciones.\nPosición Cómoda: Es recomendable realizar esta técnica en una posición cómoda, preferiblemente sentada o tumbada, para evitar mareos.\nCómo Realizar la Respiración de Jadeo\nEncuentra una Posición Cómoda: Siéntate o acuéstate en una posición que te resulte relajante.\ninhalar por la Nariz: Toma aire lentamente por la nariz.\nExhalar por la Boca: Expulsa el aire rápidamente por la boca en pequeñas ráfagas, siguiendo el patrón deseado.\nRepetir: Continúa este patrón durante las contracciones, manteniendo un enfoque en la respiración.",
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
              description: "se centra en inhalar y exhalar a través de la nariz, te ayudarà a mantener un flujo constante de oxígeno y a promover un estado de calma.\nCaracterísticas de la Respiración Nariz-Nariz\nInhalación Profunda: Consiste en inhalar profundamente por la nariz, llevando el aire hacia el abdomen. Esto permite una mayor oxigenación y te ayudarà a relajar los músculos.\nExhalación Controlada: La exhalación también se realiza por la nariz, lo que ayuda a mantener un ritmo constante y evita la hiperventilación.\nRitmo Suave: Mantener un ritmo suave y controlado es clave para evitar tensiones y mantener la calma durante las contracciones.\nCómo Realizar la Respiración Nariz-Nariz\nPosición Cómoda: Encuentra una posición cómoda, ya sea sentada o en cuclillas, donde te sientas relajada.\nInhalar por la Nariz: Toma aire lentamente por la nariz, sintiendo cómo se expande tu abdomen.\nExhalar por la Nariz: Exhala suavemente también por la nariz, asegurándote de que el aire salga de manera controlada.\nRepetir: Continúa este patrón durante las contracciones, concentrándote en tu respiración.\nBeneficios de la Respiración Nariz-Nariz\nOxigenación Eficiente: Al respirar por la nariz, se filtra y calienta el aire, lo que puede ser beneficioso para ambos.\nReducción del Estrés: Esta técnica ayuda a reducir el estrés y la ansiedad.",
            ),
            Padding(padding: const EdgeInsets.all(20)),
          ],
          
        )));
  }
}
