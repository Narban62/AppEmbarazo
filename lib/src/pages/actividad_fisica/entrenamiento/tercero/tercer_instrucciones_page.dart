import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class TercerInstruccionesPage extends StatefulWidget {
  const TercerInstruccionesPage({super.key});

  @override
  State<TercerInstruccionesPage> createState() =>
      TercerInstruccionesPageState();
}

class TercerInstruccionesPageState extends State<TercerInstruccionesPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 250, 164, 125);
    const String videoImage = '';
    const String arqueo =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/1 ARQUEO DE COLUMNA.mp4';
    const String retroversion =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/2 RETROVERSIÓN DE PELVIS.mp4';
    const String movimientoLateral =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/3 MOVIMIENTO LATERAL DE PELVIS.mp4';
    const String movimientoCircular =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/4 MOVIMIENTO CIRCULAR DE PELVIS.mp4';
    const String sentadilla =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/5 SENTADILLA Y ESTIRAMIENTO LATERAL.mp4';
    const String gemelos =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/6 GEMELOS.mp4';
    const String movilizacion =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/7 MOVILIZACIÓN DE CADERA Y ESTIRAMIENTO LUMBAR.mp4';
    const String elevacion =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/8 ELEVACIÓN DE PELVIS.mp4';
    const String triceps =
        'videos/psicoprofilaxis/actividad fisica/tercer trimestre/9 TRICEPS CON SILLA.mp4';

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Ejercicios de calentamiento',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(text: "1. Arqueo de columna"),
            VideoWidget(
              videoUrl: arqueo,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie con las piernas abiertas más allá de la altura de tus hombros, rodillas flexionadas, apoya tus manos sobre las rodillas e inclínate hacia adelante. En esta posición arquea tu espalda  y luego estírate  siguiendo una línea diagonal, sin flexionar la cabeza hacia atrás. Respira al momento de estirar y suelta el aire cuando arqueas la columna.\nHaz de 8 repeticiones.',
            ),
            TextWidget(text: "2. Retroversión de pelvis"),
            VideoWidget(
              videoUrl: retroversion,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente hacia adelante y hacia atrás intentando no mover el tórax ni las rodillas. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "3. Movimiento lateral de pelvis"),
            VideoWidget(
              videoUrl: movimientoLateral,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente de izquierda a derecha. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "4. Movimiento circular de pelvis"),
            VideoWidget(
              videoUrl: movimientoCircular,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente dibujando u círculo con tus caderas. Repite el ejercicio dibujando el círculo por el lado contario. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "5. Sentadilla y estiramiento lateral "),
            VideoWidget(
              videoUrl: sentadilla,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie con las piernas abiertas más allá de la altura de tus hombros, espalda recta, manos hacia adelante frente al pecho con los dedos entrelazados. Baja tu cadera flexionando las rodillas, estira las rodillas haciendo una sentadilla, cuando estires las piernas gira el troco hacia la izquierda, eleva tú brazo derecho y estira tu cuerpo todo lo que puedas, coloca tu mano izquierda en la cintura. Repite la sentadilla pero esta vez gira el tronco al lado derecho, estira el brazo izquierdo y coloca en brazo derecho en la cintura. Alterna el movimiento lado a lado.Haz de 10 repeticiones.',
            ),
            TextWidget(text: "6. Gemelos"),
            VideoWidget(
              videoUrl: gemelos,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie frente a una pared con las piernas ligeramente separadas, apoya tus manos en la pared, párate de puntillas y sostén la posición por 2 segundos, asienta los talones por 2 segundos y eleva neamente. Haz 2 series de 10  repeticiones.',
            ),
            TextWidget(
                text: "7. Movilización de cadera y estiramiento de lumbares"),
            VideoWidget(
              videoUrl: movilizacion,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Acostada boca arriba, dobla tu pierna derecha y apoya el pie en el piso, mantén la pierna izquierda estirada, estira el brazo izquierdo hacia atrás. Toma aire y tensiona lo más que puedas la pierna y brazo que están en el piso, al soltar el aire relájalos. Completa una serie de 10 repeticiones  y haz lo mismo con la pierna y brazo contrario.',
            ),
            TextWidget(text: "8. Elevación de pelvis"),
            VideoWidget(
              videoUrl: elevacion,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Recostada en el piso, los brazos a lo largo del cuerpo, rodillas dobladas, plantas de los pies sobre el piso. Levanta la pelvis y mantenla elevada por 5 segundos, luego vuelve a la posición original por 5 segundos. Repite el movimiento. Cuando la pelvis esté abajo, mete aire y cuando eleves la pelvis, saca el aire.. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "9. Tríceps con  silla"),
            VideoWidget(
              videoUrl: triceps,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Siéntate con las nalgas apoyadas al filo de la silla, apoya los talones en el piso, piernas levemente flexionadas. Apoya ambas manos a los costados de la silla, lleva tu cadera hacia delante y hacia abajo sosteniendo tus manos firmes en la silla, flexiona los codos. Luego estira los codos y sube tu cadera. De este modo sube y baja tu cadera apoyándote en la silla. Haz a serie de 10 repeticiones.',
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
