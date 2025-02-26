import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EstiramientoInstruccionesPage extends StatefulWidget {
  const EstiramientoInstruccionesPage({super.key});

  @override
  State<EstiramientoInstruccionesPage> createState() =>
      EstiramientoInstruccionesPageState();
}

class EstiramientoInstruccionesPageState extends State<EstiramientoInstruccionesPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);
    const String videoImage = '';
    const String brazo1 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/1 ESTIRAMIENTO DE BRAZO.mp4';
    const String brazo2 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/1 ESTIRAMIENTO DE BRAZO 2.mp4';
    const String cuadriceps =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/2 ESTIRAMIENTO DE CUÁDRICEPS.mp4';
    const String tobillos1 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/3 FLEXIÓN Y EXTENSIÓN DE TOBILLOS.mp4';
    const String tobillos2 =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/3 FLEXIÓN Y EXTENSIÓN DE TOBILLOS 2.mp4';
    const String espalda =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/4 ESTIRAMIENTO DE ESPALDA.mp4';
    const String espladaCruzada =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/5 ESTIRAMIENTO CRUZADO DE ESPALDA.mp4';
    const String gato =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/6 MOVIMIENTO DE GATO.mp4';
    const String cuello =
        'videos/psicoprofilaxis/actividad fisica/estiramiento/7 ESTIRAMIENDO DE CUELLO Y BRAZOS.mp4';

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Estiramientos',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            TextWidget(text: "1. Estiramiento de brazo"),
            VideoWidget(
              videoUrl: brazo1,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Colócate de pie, estira tu brazo hacia adelante y con la otra mano empuja la palma de la mano hacia atrás. Cuenta hasta 10 y suelta. Repite lo mismo con el brazo contario.',
            ),
            const SizedBox(height: 15),
            VideoWidget(
              videoUrl: brazo2,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Estira el brazo hacia adelanta y rota tu muñeca hacia adentro de tal forma que la palma de la mano quede expuesta del otro lado, entrecruza los dedos de ambas manos y mantén la posición 10 segundos. Repite el mismo ejercicio con el otro brazo.',
            ),
            Button(
                buttonName: 'Inicio',
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/cronometro');
                },
            ),
            TextWidget(text: "2. Estiramiento de cuádriceps"),
            VideoWidget(
              videoUrl: cuadriceps,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Sujétate de una pared o un mueble, lleva tu pierna hacia atrás hasta que tope tus nalgas, sostén tu tobillo hasta que sientas un estiramiento en la parte delantera del muslo. Contrae los músculos del estómago. Mantén la posición durante unos 10 segundos. Cambia de pierna y repite.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "3. Flexión y extensión de tobillos"),
            VideoWidget(
              videoUrl: tobillos1,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Sentada en el piso, con las piernas estiradas y la espalda recta , estira los pies y flexiona y estira los tobillos. Repite 10 veces.',
            ),
            const SizedBox(height: 15),
            VideoWidget(
              videoUrl: tobillos2,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Luego en la misma posición dibuja con las puntas de los pies círculos hacia adentro 10 veces y luego círculos hacia fuera 10 veces.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "4. Estiramiento de espalda"),
            VideoWidget(
              videoUrl: espalda,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'En el piso, sentada  sobre tus piernas, con los pies juntos y las rodillas separadas, estira tus brazos e inclínate lentamente hacia adelante estirando tus brazos hasta que tu frente  toque el piso. Nota como se estira tu espalda, descansa en esa posición unos segundos mientras respiras lentamente. ',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "5. Estiramiento cruzado de espalda"),
            VideoWidget(
              videoUrl: espladaCruzada,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'En el piso, colócate firmemente en posición de gateo, mueve tu brazo izquierdo por debajo del pecho y detrás del brazo que está apoyado en el piso, lentamente apoya tu mejilla en el suelo y estira el brazo ,lo más que puedas, siente como tu espalda se abre, espera unos segundos mientras respiras lentamente. Incorpórate muy despacio y cambia de lado.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "6. Movimiento de gato"),
            VideoWidget(
              videoUrl: gato,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Arrodíllate en el piso y pon las manos en el suelo delante de ti. Mantén las manos separadas al ancho de los hombros y las rodillas directamente debajo de las caderas. Inhala profundamente mientras curvas la parte baja de la espalda y levantas la cabeza, inclinando la pelvis hacia arriba. Exhala profundamente y mete el abdomen hacia adentro, arqueando la columna vertebral y bajando la cabeza y la pelvis como un "gato". Repite esto varias veces.',
            ),
            Button(
              buttonName: 'Inicio',
              buttonColor: colorButton,
              onPressed: () {
                Navigator.pushNamed(context, '/cronometro');
              },
            ),
            TextWidget(text: "7. Estiramientos de cuello y brazos"),
            VideoWidget(
              videoUrl: cuello,
              videoImage: videoImage,
              bgColor: colorButton,
              description: 'Siéntate con las piernas cruzadas en posición hindú. Coloca tu mano izquierda sobre la rodilla derecha, gira tu cabeza hacia la derecha y siente la tensión, mantén la posición por 10 segundos y repite el ejercicio hacia el otro lado. Levanta el brazo derecho e inclínate hacia la izquierda estirando el brazo derecho lo más que puedas mientras el brazo izquierdo se apoya en el piso, mantén la posición por 10 segundos. Vuelve al medio y coloca tu mano en la cabeza y estira tu cuello hacia la derecha por 10 segundos. Luego repite el ejercicio con el otro brazo.',
            ),

            TextWidget(
              text:
                  'FELICITACIONES\nCOMPLETASTE LA RUTINA\nAhora puedes seguir con tu día.',
              textAlign: TextAlign.center,
            ),
            Button(
                buttonName: 'Calendario de actividades',
                buttonColor: colorButton,
                onPressed: () {
                  Navigator.pushNamed(context, '/calendario');
                })
          ],
        ),
      ),
    );
  }
}
