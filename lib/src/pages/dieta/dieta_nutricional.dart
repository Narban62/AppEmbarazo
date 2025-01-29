import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/menu_widget_dieta.dart';
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
                      imagesrc: 'assets/images/dieta/dieta 1.jpg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Carnes',
                      informacionAdicional: 'Proteina 12g \nGrasa 14g',
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
                      imagesrc: 'assets/images/dieta/dieta 1.jpg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Carnes',
                      informacionAdicional: 'Proteina 12g \nGrasa 14g',
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
                      imagesrc: 'assets/images/dieta/dieta 1.jpg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Carnes',
                      informacionAdicional: 'Proteina 12g \nGrasa 14g',
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
                      imagesrc: 'assets/images/dieta/dieta 1.jpg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Carnes',
                      informacionAdicional: 'Proteina 12g \nGrasa 14g',
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
                      imagesrc: 'assets/images/dieta/dieta 1.jpg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Carnes',
                      informacionAdicional: 'Proteina 12g \nGrasa 14g',
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
                      imagesrc: 'assets/images/dieta/dieta 1.jpg',
                      isPrincipal: true,
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre imagen y menú
                  // Menú desplegable
                  Expanded(
                    child: MenuWidgetDieta(
                      titulo: 'Carnes',
                      informacionAdicional: 'Proteina 12g \nGrasa 14g',
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
                  const SizedBox(width: 10), // Espacio entre los botones
                 
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
