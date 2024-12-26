import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class SegundoInstruccionesPage extends StatefulWidget {
  const SegundoInstruccionesPage({super.key});

  @override
  State<SegundoInstruccionesPage> createState() =>
      SegundoInstruccionesPageState();
}

class SegundoInstruccionesPageState extends State<SegundoInstruccionesPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoImage = '';
    const String flexiones =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/1 FLEXIONES INCLINADAS.mp4';
    const String sentadilla =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/2 SENTADILLA CRUZADA ALTERNA.mp4';
    const String movimiento =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/3 MOVIMIENTO DE PELVIS.mp4';
    const String giro =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/4 GIRO DE ESPALDA.mp4';
    const String gemelos =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/5 GEMELOS.mp4';
    const String cuadriceps =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/6 CUADRICEPS MAS PIERNA CRUZADA.mp4';
    const String subir =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/7 SUBIR ESCALÓN.mp4';
    const String sumo =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/8 SUMO GEMELO.mp4';
    const String sirena =
        'videos/psicoprofilaxis/actividad fisica/segundo trimestre/9 EJERCICIO DE SIRENA.mp4';

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
            TextWidget(text: "1. Flexiones inclinadas"),
            VideoWidget(
              videoUrl: flexiones,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Párate frente a una pared y coloca las manos separadas a la altura de los hombros sobre la superficie. Coloca tu cuerpo en una posición de tabla de pie con la espalda en línea recta. Dobla los brazos y baja lentamente el pecho hacia la mesa o barandilla. Estira los brazos para volver a la posición inicial. Haz 2 series de 8 repeticiones.',
            ),
            TextWidget(text: "2. Sentadilla cruzada alterna"),
            VideoWidget(
              videoUrl: sentadilla,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie, con los pies colocados ligeramente más anchos que los hombros. Haz una sentadilla bajando lo más que puedas, saca la cadera atrás y cuando te levantes aprieta el glúteo y da una zancada hacia atrás teniendo cuidado de que tu pierna forme un ángulo de 90 grados. Vuelve a la posición inicial y repite la sentadilla, pero alterna la pierna que da la zancada hacia atrás. Haz 2 series de 8 repeticiones.',
            ),
            TextWidget(text: "3. Movimiento de pelvis"),
            VideoWidget(
              videoUrl: movimiento,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Colócate de pie, con los piernas separadas más allá del ancho de tus caderas, las rodillas ligeramente flexionadas, manos en la cintura, mueve tu pelvis lentamente dibujando un cuadrado con tus caderas. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "4. Giro de espalda"),
            VideoWidget(
              videoUrl: giro,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie, con una pierna adelante  y la otra atrás dejando el talón de la pierna de atrás levantado, brazos extendidos hacia los lados, espalda recta. Flexionar las dos rodillas a 90 grados y luego extender las piernas, cuando te hayas incorporado gira la espalda hacia la pierna que tienes delante. Repite el movimiento 8 veces, luego cambia de pierna y repite 8 veces más.',
            ),
            TextWidget(text: "5. Gemelos"),
            VideoWidget(
              videoUrl: gemelos,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie frente a una pared con las piernas ligeramente separadas, apoya tus manos en la pared, párate de puntillas y sostén la posición por 2 segundos, asienta los talones por 2 segundos y eleva neamente. Haz 2 series de 10  repeticiones.',
            ),
            TextWidget(text: "6. Cuadrúpeda y pierna cruzada"),
            VideoWidget(
              videoUrl: cuadriceps,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'En el suelo, de rodillas y las manos apoyadas en el piso, manos colocadas debajo de los hombros y rodillas debajo de las caderas, espalda totalmente recta. Manteniendo los puntos de apoyo firmes en el piso, eleve la pierna derecha y estire la rodilla, baje la pierna, suba nuevamente pero esta vez al momento de bajar cruce la pierna al lado contrario. Cambia de lado y repite el ejercicio con la pierna izquierda. Haz 1 serie de 8 repeticiones con cada pierna.',
            ),
            TextWidget(text: "7. Subir escalón en una pierna"),
            VideoWidget(
              videoUrl: subir,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie, frente una grada o una silla, sube la grada con una pierna, cuando estés arriba, flexiona y estira la rodilla de la pierna que quedó atrás  Recupera la posición inicial y empieza nuevamente el movimiento. Haz 8 repeticiones con cada pierna.',
            ),
            TextWidget(text: "8. Sumo gemelo"),
            VideoWidget(
              videoUrl: sumo,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'De pie con las piernas abiertas más allá de la altura de tus hombros, espalda recta, manos hacia adelante frente al pecho con los dedos entrelazados. Baja tu cadera y mantén la posición de  sentadilla, sin soltar la posición, eleva los talones durante 2 segundos, luego asienta los talones otros 2 segundos. Repite el ejercicio 8 veces.',
            ),
            TextWidget(text: "9. Ejercicio de Sirena"),
            VideoWidget(
              videoUrl: sirena,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description:
                  'Siéntate con las piernas cruzadas en posición hindú. Levanta el brazo derecho e inclínate hacia la izquierda estirando el brazo derecho lo más que puedas mientras el brazo izquierdo se apoya en el piso. Vuelve al medio y haz lo mismo con el brazo izquierdo. Ten cuidado de no levantar el glúteo del piso.  Haz 2 series de 10 arepeticiones.',
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
