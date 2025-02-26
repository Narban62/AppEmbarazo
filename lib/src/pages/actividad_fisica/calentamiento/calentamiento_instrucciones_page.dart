import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/text_widget.dart';

class InstruccionesCalentamientoState extends StatefulWidget {
  const InstruccionesCalentamientoState({super.key});

  @override
  State<InstruccionesCalentamientoState> createState() => InstruccionesCalentamientoStateState();
}

class InstruccionesCalentamientoStateState extends State<InstruccionesCalentamientoState> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 250, 164, 125);
    const String videoImage = '';
    const String hombros =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/1 ROTACIÓN DE HOMBROS.mp4';
    const String brazos =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/2 ELEVACIÓN DE BRAZOS.mp4';
    const String rotBrazos =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/3 ROTACIÓN DE BRAZOS.mp4';
    const String cuello =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/4 FLEXIÓN DE CUELLO.mp4';
    const String cadera =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/5 ROTACIÓN DE CADERA.mp4';
    const String piernas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/6 ELEVACIÓN DE PIERNAS.mp4';
    const String crucePiernas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/7 CRUCE DE PIERNAS.mp4';
    const String sentadillas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/8 SENTADILLAS Y ELEVACIÓN DE RODILLA.mp4';
    const String estiramientoPiernas =
        'videos/psicoprofilaxis/actividad fisica/calentamiento/9 ESTIRAMIENTO DE PIERNAS.mp4';  

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
            TextWidget(text: "1. Rotación de hombros"),
            VideoWidget(
              videoUrl: hombros,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Colócate de pie, con los piernas separadas al ancho de los hombros, gira los hombros hacia atrás como dibujando un círculo. Recuerda respirar  por la nariz y soltar el aire por la boca. Repite el movimiento 8 veces y luego dibuja los círculos hacia adelante 8 veces más.',
            ),
            Button(
                buttonName: 'Inicio',
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/cronometro');
                },
              ),
            TextWidget(text: "2. Elevación de brazos"),
            VideoWidget(
              videoUrl: brazos,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'En la misma posición de pie, levanta tu brazo derecho y luego bájalo. Repite el ejercicio 8 veces y luego haz lo mismo con el brazo izquierdo. Ahora estira tus brazos a los lados y cruza  ambos brazos por delante de tu pecho, repite 8 veces.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "3. Rotación de brazos"),
            VideoWidget(
              videoUrl: rotBrazos,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Colócate de pie, con los piernas separadas al ancho de los hombros, con tus brazos estirados Dibuja círculos amplios y grandes primero hacia adelante y luego hacia atrás 8 veces cada uno.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "4. Flexión de cuello"),
            VideoWidget(
              videoUrl: cuello,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'En la misma posición de pie, lleva tu cabeza hacia adelante hasta que tu barbilla toque tu pecho, lentamente eleva la cabeza hacia atrás estirando completamente el cuello. Repite el movimiento 4 veces.Ahora gira tu cabeza hacia la derecha y luego hacia la izquierda, 4 veces.Finalmente dibuja con tu cabeza 4 círculos hacia la derecha y luego 4 hacia la izquierda.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "5. Rotación de cadera"),
            VideoWidget(
              videoUrl: cadera,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Colócate de pie, con los piernas separadas al ancho de los hombros, flexiona la rodilla y levanta la pierna derecha llevándola hacia el lateral como formado un semicírculo hacia atrás, recupera la posición inicial y haz lo mismo con la otra pierna. Repite el movimiento 10 veces. Haz el mismo ejercicio pero esta vez forma el semicírculos hacia adelante.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "6. Elevación de piernas"),
            VideoWidget(
              videoUrl:   piernas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Colócate de lado arrimada en una pared, usa tu brazo izquierdo como soporte, una vez  en posición firme levanta tu pierna a la máxima altura que pinedas, sin flexionar la rodilla, lleva tu pierna lo más atrás que puedas. Repite el movimiento 8 veces. Cambia de lado y repite el ejercicio con la pierna contraria 8 veces.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "7. Cruce de piernas"),
            VideoWidget(
              videoUrl: crucePiernas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Colócate de lado arrimada en una pared, usa tu brazo izquierdo como soporte y tu mano derecha en la cintura, una vez  en posición firme, abre tu pierna hacia un lado y luego crúzala por delante de la pierna que está fija en el suelo, sin asentar la pierna, abre nuevamente y repite el movimiento 8 veces. Cambia de lado y haz lo mismo con la otra pierna.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "8. Sentadillas y elevación de rodilla"),
            VideoWidget(
              videoUrl: sentadillas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Con los pies ligeramente separados al ancho de los hombros, brazos extendidos y firmes hacia los lados, agáchate como si estuvieras a punto de sentarte en una silla imaginaria y al levantarte eleva la rodilla tratando de tocar el codo, sin bajar el brazo. Vuelve a hacer la sentadilla y alterna el movimiento con la rodilla de la otra pierna. Repite el ejercicio 8 veces',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "9. Estiramiento de piernas"),
            VideoWidget(
              videoUrl: estiramientoPiernas,
              videoImage: videoImage,
              bgColor: bgVideoColor,
              description: 'Colócate de pie, con las piernas abiertas al máximo de tu capacidad, las puntas de los pies apuntan hacia afuera, manos al frente, sostenidas en posición de oración, espalda recta. Flexiona la rodilla y dirige tu cadera hacia un lado, estira la pierna contraria sin levantarla del piso, vuelve al centro, apretando los glúteos y repite el movimiento del otro lado. Completa una serie de 8 repeticiones.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),

            TextWidget(text: 'FELICITACIONES\nCOMPLETASTE EL CALENTAMIENTO\nAhora puedes empezar tu rutina de ejercicios',textAlign: TextAlign.center,),
            Button(buttonName: 'Entrenamiento', buttonColor: colorButton, onPressed: (){Navigator.pushNamed(context, '/trimestre');})
          ],
        ),
      ),
    );
  }
}