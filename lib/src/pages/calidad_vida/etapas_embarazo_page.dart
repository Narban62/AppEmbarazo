import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EtapasEmbarazoPage extends StatefulWidget {
  const EtapasEmbarazoPage({super.key});

  @override
  State<EtapasEmbarazoPage> createState() => _EtapasEmbarazoPageState();
}

class _EtapasEmbarazoPageState extends State<EtapasEmbarazoPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              color: colorButton,
              text: 'Etapas del embarazo',
              isSubtitle: false,
              showButton: false,
            ),
            TextWidget(
                text:
                    'El embarazo toma 40 semanas que se cuentan desde el primer día de tu último periodo menstrual y se divide en tres etpas.'),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            HeaderWidget(
              text: 'Primer trimestre: desde la semana 1 a la 12.',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(
                text:
                    'El embarazo aumenta algunas hormonas en tu cuerpo como: los estrógenos y la progesterona, la gonadotropina coriónica (suprime la menstruación),  preparar las glándulas mamarias para la lactancia (estrógenos y prolactina), inducir el parto (oxitocina).'),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
            TextWidget(
                text:
                    '¿Como esta tu bebito en el primer trimestre del embarazo? '),
            TextWidget(
                text:
                    'Desde que sabes que estas embarazada hasta las 8 semanas se considera embrión, posterior a ello tendrá el nombre de feto. '),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: false),
            TextWidget(
                text:
                    'Recuerda: en estas semanas tu bebito esta creando sus órganos y sistemas por lo que debes cuidar lo que comes, evitar automedicarte o exponerte a sustancias toxicas ya que puede dañar su desarrollo.'),
            HeaderWidget(
              text: 'Segundo trimestre: desde la semana 13 a la 27.',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(
                text:
                    'Tu cuerpo cambia para apoyar a tu bebé: crecen útero, abdomen y pechos; puede haber estrías y aumento de peso (1 kg/mes). Mayor trabajo de corazón y riñones genera hinchazón, cansancio y más micción. Hay ralentización intestinal, ardor y estreñimiento. Las encías pueden sangrar. Náuseas y cansancio disminuyen. '),
            TextWidget(
                text:
                    '¿Como esta tu bebito en el segundo trimestre del embarazo? '),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            TextWidget(
                text:
                    'Con unas 32 semanas de embarazo se puede decir que el bebé está formado por completo, aunque los pulmones todavía no han madurado del todo. '),
            TextWidget(
                text:
                    'Recuerda: Si todo ha ido como se espera, el bebé estará en posición de nacer, con la cabeza mirando hacia el canal del parto. El peso que gana día a día aumenta, y también crece bastante deprisa.'),
            TextWidget(
                text:
                    'Recomendaciones al vestir durante el embarazo.'),
            TextWidget(
                text:
                    'A partir de las 14 semana de gestación debes utilizar ropa holgada y zapatos bajos para mejorar tu salud y la de tú bebe Dentro de los beneficios tenemos:'),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            
            TextWidget(
                text:
                    'Tips de belleza interior y exterior'),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: false),                
            HeaderWidget(
              text: 'Tercer trimestre: desde la semana 28 a la 40.',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            TextWidget(
                text:
                    'El útero crece, dificultando moverse y descansar. Hay aumento de peso, cansancio, hinchazón en piernas, y estiramiento de ligamentos para el parto. Las mamas producen calostro al final o después del embarazo, y aumenta la micción.'),
          ],
        ),
      ),
    );
  }
}
