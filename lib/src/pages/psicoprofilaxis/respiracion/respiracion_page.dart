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
            const TextWidget(textAlign: TextAlign.center,
                text:
                    'La respiración durante el trabajo de parto,  influye en la relajación muscular, la oxigenación de tu bebé y el manejo del dolor.'),
                
                    
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
              description: "Ayuda a las mujeres durante el trabajo de parto, facilitando la relajación y el manejo del dolor.\nTécnicas de Respiración Pausada\nRespiración Abdominal:  Inhala profundamente por la nariz, permitiendo que el abdomen se expanda, y exhalar lentamente por la boca.\nBeneficios: Ayuda a relajar el cuerpo entre contracciones y mejora la oxigenación de tu bebé."
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
              description: "Esta técnica ayuda a las mujeres gestantes a relajarse, reducir el estrés y manejar el dolor durante el trabajo de parto. \nCómo Realizar \nInhalación profunda: La mujer inhala lentamente por la nariz, llenando los pulmones de aire y expandiendo el abdomen. Esto asegura que el cuerpo reciba una cantidad adecuada de oxígeno.\n1. Retención breve: Después de inhalar, se mantiene el aire en los pulmones por unos segundos. Esto ayuda a maximizar la oxigenación de la sangre.\n2. Exhalación lenta: La mujer exhala lentamente por la boca, vaciando completamente los pulmones. Este proceso de exhalación debe ser más largo que la inhalación.\n3. Repetición: Este ciclo de respiración se repite varias veces, ayudando a la mujer a mantenerse calmada y enfocada.",
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
              description: "Es una técnica utilizada durante el trabajo de parto, especialmente en la fase de dilatación y en la transición hacia el empuje. \nTECNICA \n1.Posición: Encuentra una posición cómoda, preferiblemente sentada o en cuclillas, con los ojos cerrados para minimizar distracciones.\n2. Inhalar y Exhalar: Inhala profundamente por la nariz y exhala rápidamente por la boca en pequeñas ráfagas, manteniendo un ritmo constante.\n3. Puedes seguir un patrón como: nariz-boca-boca o nariz-nariz-boca-boca\n4. Evitar Hiperventilación: Es crucial no exagerar con la velocidad para evitar mareos.",
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
              description: ") Durante el Trabajo de Parto, esta técnica te ayudarà a manejar el dolor y a mantener la calma, evitando la hiperventilación y promoviendo una adecuada oxigenación.\nCómo Realizar la Respiración de Jadeo\n1. Encuentra una Posición Cómoda: Siéntate o acuéstate en una posición que te resulte relajante.\n2. Inhalar por la Nariz: Toma aire lentamente por la nariz.\n3.Exhalar por la Boca: Expulsa el aire rápidamente por la boca en pequeñas ráfagas, siguiendo el patrón deseado.\n4. Repetir: Continúa este patrón durante las contracciones, manteniendo un enfoque en la respiración.",
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
              description: "se centra en inhalar y exhalar a través de la nariz, te ayudarà a mantener un flujo constante de oxígeno y a promover un estado de calma.\nCómo Realizar la Respiración Nariz-Nariz\n1. Posición Cómoda: Encuentra una posición cómoda, ya sea sentada o en cuclillas, donde te sientas relajada.\n2. Inhalar por la Nariz: Toma aire lentamente por la nariz, sintiendo cómo se expande tu abdomen.\n3. Exhalar por la Nariz: Exhala suavemente también por la nariz, asegurándote de que el aire salga de manera controlada.\n4. Repetir: Continúa este patrón durante las contracciones, concentrándote en tu respiración.\nBeneficios de la Respiración Nariz-Nariz\n* Oxigenación Eficiente: Al respirar por la nariz, se filtra y calienta el aire, lo que puede ser beneficioso para ambos.\n* Reducción del Estrés: Esta técnica ayuda a reducir el estrés y la ansiedad.",
            ),
            Padding(padding: const EdgeInsets.all(20)),
          ],
          
        )));
  }
}
