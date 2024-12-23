import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class PrimerInstruccionesPage extends StatefulWidget {
  const PrimerInstruccionesPage({super.key});

  @override
  State<PrimerInstruccionesPage> createState() =>
      PrimerInstruccionesPageState();
}

class PrimerInstruccionesPageState extends State<PrimerInstruccionesPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoImage = '';
    const String lumbar =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String espalda =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/2 FLEXIÓN DE ESPALDA.mp4';
    const String retroversion =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String movimientoLateral =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String movimientoCircular =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String elevacion =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String movilidad1 =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String movilidad2 =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String apertura =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String gato =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String preparacion =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';
    const String sentadilla =
        'videos/psicoprofilaxis/actividad fisica/primer trimestre/1 ESTIRAMIENTO LUMBAR.mp4';

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Ejercicios recomendados',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(text: "1. Estiramiento lumbar"),
            VideoWidget(
              videoUrl: lumbar,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas al ancho de los hombros, flexiona ligeramente las rodillas, estira los brazos a los lados y llévalos hacia adelante, encorvando ligeramente la espalda. Luego lleva los brazos hacia a tras y estira el troco hacia adelante. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "2. Flexión de espalda"),
            VideoWidget(
              videoUrl: espalda,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Con las piernas abiertas al ancho de las caderas, eleva ambos brazos e inclina lentamente tu espalda hacia adelante, luego mueve tu brazos hacia un lado, arriba y al otro lado como dibujando un gran círculo. Repetir el mismo ejercicio iniciando por el lado contrario.',
            ),
            TextWidget(text: "3. Retroversión de pelvis"),
            VideoWidget(
              videoUrl: retroversion,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente hacia adelante y hacia atrás intentando no mover el tórax ni las rodillas. Repite el ejercicio 8 veces',
            ),
            TextWidget(text: "4. Movimiento lateral de pelvis"),
            VideoWidget(
              videoUrl: movimientoLateral,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente de izquierda a derecha. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "5. Movimiento circular de pelvis"),
            VideoWidget(
              videoUrl: movimientoCircular,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente dibujando u círculo con tus caderas. Repite el ejercicio dibujando el círculo por el lado contario. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "6. Elevación de pelvis"),
            VideoWidget(
              videoUrl: elevacion,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Recostada en el piso, los brazos a lo largo del cuerpo, rodillas dobladas, plantas de los pies sobre el piso. Levanta la pelvis y mantenla elevada por 5 segundos, luego vuelve a la posición original por 5 segundos. Repite el movimiento. Cuando la pelvis esté abajo, mete aire y cuando eleves la pelvis, saca el aire. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "7. Movilidad de tronco"),
            VideoWidget(
              videoUrl: movilidad1,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Recostada de lado con las rodillas flexionadas, en posición fetal. Estira tus brazos hacia un lado, manos juntas palma con palma, mete aire y al sacar el aire abre tu brazo hacia un lado, síguelo con tu mirada y gira tu troco, realiza dos respiraciones lentas y egresa el brazo hasta que entre en contacto con la palma de la mano que está en reposo, respira. Repite el movimiento 8 veces de un lado y 8 veces del otro lado.',
            ),
            const SizedBox(height: 15),
            VideoWidget(
              videoUrl: movilidad2,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              ),
            TextWidget(text: "8. Apertura de rodillas y pies"),
            VideoWidget(
              videoUrl: apertura,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Recostada de lado, con la cabeza reposando sobre tu brazo flexionado, rodillas flexionadas. Abre las rodillas manteniendo juntos los pies y cierra. Luego abre los pies manteniendo juntas las rodillas y cierra. Repite el ejercicio 8 veces. No te olvides de respirar lentamente.',
            ),
            TextWidget(text: "9. Movimiento de gato"),
            VideoWidget(
              videoUrl: gato,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Arrodíllate en el piso y pon las manos en el suelo delante de ti. Mantén las manos separadas al ancho de los hombros y las rodillas directamente debajo de las caderas. Inhala profundamente mientras curvas la parte baja de la espalda y levantas la cabeza, inclinando la pelvis hacia arriba. Exhala profundamente y mete el abdomen hacia adentro, arqueando la columna vertebral y bajando la cabeza y la pelvis como un "gato". Repite esto 8 veces.',
            ),
            TextWidget(text: "10. Preparación pélvica"),
            VideoWidget(
              videoUrl: preparacion,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Acuéstate boca arriba con las rodillas dobladas y los pies apoyados en el suelo, separados aproximadamente a la altura de las caderas, la espalda no debe presionarse contra el suelo. Inhala para prepararte, luego exhala para realizar una contracción (de Kegel) cerrando suavemente las aberturas de la uretra, la vagina y el ano. Mientras realizas esta contracción, contrae ligeramente los músculos abdominales. Luego Inhala, relaja los abdominales y el suelo pélvico, exhala y repite la contracción. Haz 2 series de 8 a 15 repeticiones de 3 a 5 segundos, una o dos veces al día.',
            ),
            TextWidget(text: "11. Sentadillas con silla"),
            VideoWidget(
              videoUrl: sentadilla,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Párate frente a una silla, con la espalda hacia la silla. Comienza con los pies ligeramente más separados que el ancho de las caderas. Utiliza la silla como guía para garantizar la posición adecuada. Agáchate como si estuvieras a punto de sentarte en la silla, pero vuelve a subir justo cuando tus muslos comiencen a tocarla. Asegúrate de tomar 5 segundos para bajar y 3 segundos para volver a subir. Exhala mientras te agachas; inhala mientras estás de pie. Haz 2 series de 8 repeticiones.',
            ),
            TextWidget(
              text:
                  'FELICITACIONES\nCOMPLETASTE LA RUTINA\nAhora puedes empezar con el estiramiento.',
              textAlign: TextAlign.center,
            ),
            Button(
                buttonName: 'Estiramiento',
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/estiramiento_home');
                })
          ],
        ),
      ),
    );
  }
}
