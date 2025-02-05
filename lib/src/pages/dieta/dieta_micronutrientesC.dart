import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/menu_widget_dieta.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu_seleccionable_widget.dart';
import '../../widgets/menu_widget.dart';

class DietaMicronutrientes extends StatefulWidget {
  const DietaMicronutrientes({super.key});

  @override
  State<DietaMicronutrientes> createState() => _DietaMicronutrientesState();
}

class _DietaMicronutrientesState extends State<DietaMicronutrientes> {
  final TextEditingController intoleranciaController = TextEditingController(); // Controlador para Autoconocimiento

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffAEDAFE);
    const Color colorButton = Color(0xff226EAD);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [

            const HeaderWidget(
              color: colorButton,
              text: 'Micronutrientes',
              isSubtitle: false,
            ),
            const ImagenWidget(
              imagesrc: 'assets/images/dieta/Picture7.png',
              isPrincipal: true,
            ),
            const TextWidget(text: "Son vitaminas y minerales que el cuerpo necesita en pequeñas cantidades para funcionar correctamente. Durante el embarazo, estos nutrientes son esenciales para el desarrollo saludable de tu bebé y tu bienestar.\nHierro\nAcido Fólico\nCalcio\nYodo\nVitaminas"),

            const HeaderWidget(
              color: colorButton,
              text: 'Cada bocado cuenta',
              isSubtitle: true,
              showButton: true,
            ),
            const HeaderWidget(
              text: 'Información Nutricional',
              color: color,
              isSubtitle: true,
            ),
            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/1.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Proteínas',
                      informacionAdicional: 'Se requieren proteínas adicionales para apoyar la síntesis de los tejidos maternos y fetales. Esta demanda aumenta a lo largo de la gestación y es máxima durante el tercer trimestre.\nEjm: en los alimentos de origen animal y en los cereales, las leguminosas (fréjoles), algunas semillas y los frutos oleaginosos. ',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/3.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Hidratos de Carbono',
                      informacionAdicional: 'Procedentes de cereales integrales, frutas y verduras en lugar de los azúcares simples, incluidos los azúcares líquidos refinados, ya sean naturales (zumos) o producidos de forma industrial (soda).\nAportan energía al cuerpo humano, especialmente a los músculos, al cerebro y al sistema nervioso y poseen un papel importante en la estructura de los órganos del cuerpo y las neuronas.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/2.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Grasas',
                      informacionAdicional: 'Son necesarios porque se relacionan con el desarrollo celular del sistema nervioso central del embrión, la retina, los músculos y otros órganos, ayudan a realizar otros procesos orgánicos, como la absorción de las vitaminas A, D, E y K. Se las obtiene del consumo de aceites vegetales de maíz, girasol, ajonjolí, canola, palma, coco, maní (cacahuate), oliva, aguacate (palta) y soya; de alimentos procesados como la margarina o la manteca vegetal clarificada para cocinar.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/5.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Lípidos',
                      informacionAdicional: 'Consumo recomendado es de 200 mg/día y puede satisfacerse con una o dos porciones de pescado a la semana.',
                    ),
                  ),
                ],
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/6.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Vitaminas /Ácido Fólico',
                      informacionAdicional: 'La cantidad diaria recomendada es de 400 µg/día, apoya la eritropoyesis materna, la síntesis de ADN y el crecimiento fetal y placentario. Las concentraciones bajas de folato se asocian a abortos espontáneos, Bajo Peso al Nacer y nacimientos prematuros.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/7.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Vitamina A 5.000 UI/día.',
                      informacionAdicional: 'Es fundamental durante los períodos de crecimiento rápido y es importante en la diferenciación celular, el desarrollo ocular, la función inmunitaria y el desarrollo y la madurez pulmonar, así como en la expresión de los genes.\nEjm: frutas, pescado, vísceras.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 10), // Espacio entre los botones

                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/10.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Vitamina D',
                      informacionAdicional: 'La vitamina D es importante en la salud ósea de la madre y especialmente en la mineralización de tu bebé. Puedes exponerte a la luz solar de 5 a 10 minutos en horas de la mañana, pero también puedes obtenerla en tu dieta por medio del consumo de aceite de hígado de pescado, hongos, yema de huevo e hígado. ',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/9.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Minerales/ Calcio',
                      informacionAdicional: 'El calcio construye y mantiene tus dientes y huesos sanos y es esencial para el desarrollo de los huesos de tu bebé. Ejm: lácteos, algunos pescados, vegetales de color verde oscuro y algunos cereales y leguminosas.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/agua.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Líquidos',
                      informacionAdicional: 'Se recomienda beber de 8 a 10 vasos de líquido de calidad a diario, principalmente agua, mejorando la sensación general de bienestar, además  reduce el riesgo de infecciones de la vía urinaria, cálculos renales y estreñimiento.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/yodo.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Yodo',
                      informacionAdicional: 'Papel fundamental en el funcionamiento de diversos órganos, incluidos el cerebro y la glándula tiroides, el consumo de yodo debe incrementarse de 200 μg a 250 μg por día.\nSu deficiencia afecta el desarrollo normal del cerebro, puede causar alteraciones serias del cerebro, defectos neurológicos, alteraciones del oído interno. Consume sal yodada y  mariscos.',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Imagen más pequeña
                  const SizedBox(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: ImagenWidget(
                      imagesrc: 'assets/images/dieta/hierro.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Hierro',
                      informacionAdicional: 'Es un nutriente esencial y se duplica en el embarazo para el óptimo desarrollo mental, motor y conductual de tu bebe, se encuentra en todas las células de tu cuerpo y es fundamental para la producción de glóbulos rojos y para la función enzimática distribuyéndose en tu útero, placenta y tu bebé en desarrollo.  Lo encontramos en las carnes rojas, vísceras, aves y pescado.',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void test() {
  print("test Josue");
}
