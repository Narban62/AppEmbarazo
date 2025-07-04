import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/menu_widget_dieta.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu_seleccionable_widget.dart';
import '../../widgets/menu_widget.dart';

class DietaNutricional extends StatefulWidget {
  const DietaNutricional({super.key});

  @override
  State<DietaNutricional> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaNutricional> {
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
              text: 'Macronutrientes',
              isSubtitle: false,
            ),
            const ImagenWidget(
              imagesrc: 'assets/images/dieta/Picture6.png',
              isPrincipal: true,
            ),
            const TextWidget(text: "Durante tu embarazo, los macronutrientes son nutrientes esenciales que el cuerpo necesita en grandes cantidades para funcionar correctamente y apoyar el crecimiento y desarrollo de tu bebé, así como para mantener tu propia salud. Aquí tenemos:\nCarbohidratos (45-65% total)\nGrasas (20% - 35% total)\nProteínas (10% - 35% total)"),

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
                      informacionAdicional: 'Procedentes de cereales integrales, frutas y verduras en lugar de los azúcares simples, incluidos los azúcares líquidos refinados, ya sean naturales (zumos) o producidos de forma industrial (soda).\nAportan energía al cuerpo humano, especialmente a los músculos, al cerebro y al sistema nervioso y poseen un papel importante en la estructura de los órganos del cuerpo y las neuronas.\nEjm: arroz, el verde, el maiz, granos secos, papa.',
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
                      informacionAdicional: 'Son necesarios porque se relacionan con el desarrollo celular del sistema nervioso central del embrión, la retina, los músculos y otros órganos, ayudan a realizar otros procesos orgánicos, como la absorción de las vitaminas A, D, E y K. Se las obtiene del consumo de aceites vegetales de maíz, girasol, oliva, consumir una porción de aguacate diario y de alimentos procesados como la margarina o la manteca vegetal clarificada para cocinar.',
                    ),
                  ),
                ],
              ),
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
                      imagesrc: 'assets/images/dieta/5.jpeg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Lípidos',
                      informacionAdicional: 'consumo recomendado es de 200 mg/día y puede satisfacerse con una o dos porciones de pescado a la semana.',
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
                      informacionAdicional: 'Es fundamental durante los períodos de crecimiento rápido y es importante en la diferenciación celular, el desarrollo ocular, la función inmunitaria y el desarrollo y la madurez pulmonar, así como en la expresión de los genes.',
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
                      informacionAdicional: 'Consumo de 600 UI/día (15 µg/día) es suficiente cuando se considera la salud ósea ejemplo: el salmón y otros pescados azules, algunos cereales enriquecidos para el desayuno, los hongos expuestos a la luz ultravioleta, y el hígado de foca.',
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
                      informacionAdicional: 'Mantienen las concentraciones séricas de calcio maternas y promueven la retención de calcio para satisfacer las crecientes demandas de mineralización del esqueleto fetal. Aumenta de 50 mg/ día a las 20 semanas de gestación a 330 mg/día a las 35 semanas.',
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
                      informacionAdicional: 'Tiene un papel fundamental en el metabolismo de los macronutrientes, así como en la mielinización neuronal fetal y la expresión de los genes',
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
                      informacionAdicional: 'El consumo inadecuado de hierro puede provocar una producción deficiente de hemoglobina, seguida de un transporte reducido de oxígeno y de hierro, al útero, la placenta y el feto en desarrollo (Las carnes rojas, vísceras, aves y pescados).',
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

void test() {
  print("test Josue");
}
