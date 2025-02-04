import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/square_button.dart';

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
              text: 'Cambios Físicos',
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(
                text:
                    'El embarazo toma 40 semanas que se cuentan desde el primer día de tu último periodo menstrual y se divide en tres etapas.'),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            HeaderWidget(
              text: 'Primer trimestre: desde la semana 1 a la 12.',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(
                text:
                    'El embarazo aumenta algunas hormonas en tu '
                        'cuerpo como: los estrógenos y la progesterona, '
                        'la gonadotropina coriónica (suprime la menstruación), '
                        ' preparar las glándulas mamarias para la '
                        'lactancia (estrógenos y prolactina), '
                        'inducir el parto (oxitocina).'),
            TextWidget(
              text: 'Causando en tu cuerpo:',
            ),
            // Primera fila de botones
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/causando_cuerpo/img.png',
                      text: 'Cambios de ánimo',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/causando_cuerpo/img_1.png',
                      text: 'Estreñimiento',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Segunda fila de botones
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/causando_cuerpo/img_2.png',
                      text: 'Deseo frecuente de orinar',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/causando_cuerpo/img_3.png',
                      text: 'Sensibilidad mamaria',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox( // Mantiene el tamaño del botón sin expandirse
                    width: 150, // Tamaño deseado, o puedes usar `size`
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/causando_cuerpo/img_4.png',
                      text: 'Flujo vaginal',
                      color: colorButton,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            TextWidget(
                text:
                    '¿Como esta tu bebito en el primer trimestre del embarazo? '),
            TextWidget(
                text:
                    'Desde que sabes que estas embarazada hasta las 8 semanas se considera embrión, posterior a ello tendrá el nombre de feto. '),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img.png',
                          text: '1 a 4 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Semilla de manzana',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_1.png',
                          text: '5 a 8 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Franbueza',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_2.png',
                          text: '9 a 13 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Mandarina',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

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
                    'Durante estas semanas, tu cuerpo seguirá transformándose para facilitar el desarrollo y crecimiento de tu bebé.'
                '\n-Tu útero y abdomen, siguen aumentando de volumen, provocando estrías de color rosáceo en tu piel.'
            '\n-Tus pechos continúan creciendo y se observan los vasos sanguíneos.'
            '\n-Tu peso sigue aumentando, aproximado de un kilogramo al mes.'
            '\n-Los riñones y el corazón trabajan todavía con más intensidad. Se puede producir mayor sensación de piernas hinchadas con aparición de varices,  cansancio, orinas con más frecuencia.'
            '\n-El ritmo intestinal se ralentiza, ardor de estómago, flatulencias y estreñimiento.'
            '\n-Las encías también se vuelven más sensibles y pueden sangrar.'
                '\n-Las náuseas o el cansancio, desaparecen durante estas semanas.'),
            TextWidget(
                text:
                    '¿Como esta tu bebito en el segundo trimestre del embarazo? '),
            TextWidget(
                text:
                    'El desarrollo y los cambios se siguen produciendo en tu interior. Las conexiones nerviosas se van extendiendo, lo que puede producir movimientos involuntarios. Aunque aún es improbable que se noten.'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_3.png',
                          text: '13 a 17 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Aguacate',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_4.png',
                          text: '18 a 21 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Alcachofa',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_5.png',
                          text: '22 a 26 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Maíz',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            TextWidget(
                text:
                    'Recuerda: En estas semanas del embarazo tu bebé ya parece completo, aunque le falta ganar peso porque tiene entre medio kilo y unos 800 gramos. La piel, las uñas y el pelo de los párpados y las cejas son notables.'),
            TextWidget(text: 'Recomendaciones al vestir durante el embarazo.'),
            TextWidget(
                text:
                    'A partir de las 14 semana de gestación debes utilizar ropa holgada y zapatos con tacón bajo para mejorar tu salud y la de tú bebé.'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/vestir/img.png',
                      text: 'Ropa holgada y cómoda',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/vestir/img_1.png',
                      text: 'Zapatos con tacón pequeño',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox( // Mantiene el tamaño del botón sin expandirse
                    width: 150, // Tamaño deseado, o puedes usar `size`
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/vestir/img_2.png',
                      text: 'Ropa interior de algodón.',
                      color: colorButton,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            TextWidget(text: 'Dentro de los beneficios se encuentra:'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/beneficios/img.png',
                      text: 'Elimina el estrés',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/beneficios/img_1.png',
                      text: 'Mejora el flújo sanguíneo.',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/beneficios/img_2.png',
                      text: 'Alivia presión de la espalda',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/beneficios/img_3.png',
                      text: 'Alivia la formación de estrías.',
                      color: colorButton,
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),

            TextWidget(text: 'Tips de belleza interior y exterior'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/belleza/img.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'CUIDA tu piel puede aparecer estrías y manchas, utiliza cremas hidratantes y protector solar.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/belleza/img_1.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'PRESTA atención a tu salud bucodental, cepilla tus dientes tres veces al día y utiliza hilo dental. manchas, utiliza.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/belleza/img_2.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'VETE a la cama temprano, trata de dormir al menos 8 horas todas las noches.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150,
                        height: 150,// Tamaño deseado, o puedes usar `size`
                        child: ImagenWidget(
                            imagesrc: 'assets/images/calidad_vida/belleza/img_3.png',
                            isPrincipal: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'SIGUE alimentación variada y equilibrada y bebe entre 1 y 2 litros de agua al día.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            HeaderWidget(
              text: 'Tercer trimestre: desde la semana 28 a la 40.',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(
                text:
                  '- Continúa el aumento de tamaño del útero y del abdomen, pudiendo dificultar al comer, dormir, caminar, inclinarse o incorporarse.'
                '\n- Sigue aumentando el peso. En general, el mayor incremento suele producirse entre las semanas 20 y 24 del embarazo.'
                '\n- Cansancio intermitente, lo que provoca una mayor necesidad de dormir con más frecuencia.'
            '\n- Puede producirse hinchazón de piernas, tobillos y pies.'
            '\n- Estiramiento de los ligamentos del cuerpo, principalmente en caderas y pelvis, preparándose para el parto.'
            '\n- En las últimas semanas de gestación o en los primeros días tras el parto, las mamas, pueden producir un líquido amarillento o blanco denominado calostro que contiene gran cantidad de minerales y anticuerpos.'
            '\n- Aumento de las ganas de orinar, cuando la cabeza del bebé ya está encajada en la pelvis.'),
            TextWidget(
                text:
                '¿Como esta tu bebito en el tercer trimestre del embarazo? '),
            TextWidget(
                text:
                'Con unas 32 semanas de embarazo se puede decir, que tu bebé está formado por completo, aunque los pulmones todavía no han madurado del todo. '),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_6.png',
                          text: '27 a 30 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Col',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_7.png',
                          text: '31 a 35 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Piña',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( // Mantiene el tamaño del botón sin expandirse
                        width: 150, // Tamaño deseado, o puedes usar `size`
                        child: SquareButton(
                          imageSrc: 'assets/images/calidad_vida/fetos/img_8.png',
                          text: '36 a 40 semanas',
                          color: colorButton,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto
                  const Text(
                    'Tamaño: Sandia',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            TextWidget(
                text:
                  'Recuerda: Si todo ha ido como se espera, tu bebé estará en posición de nacer, con la cabeza mirando hacia el canal del parto. El peso que gana día a día aumenta, y también crece bastante deprisa.'),
          ],
        ),
      ),
    );
  }
}
