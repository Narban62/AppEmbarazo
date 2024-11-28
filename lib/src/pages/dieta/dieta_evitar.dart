import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class DietaEvitar extends StatefulWidget {
  const DietaEvitar({super.key});

  @override
  State<DietaEvitar> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaEvitar> {
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
              text: '\nCada bocado cuenta',
              isSubtitle: true,
              showButton: true,
            ),
            const HeaderWidget(
              text: 'Comidas que debes evitar durante el embarazo:',
              color: color,
              isSubtitle: true,
            ),
            // Fila de imágenes y botones alineados
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Imagen 1 y botón
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 100,
                          height: 100,
                          child: ImagenWidget(
                            imagesrc: 'assets/images/dieta/embutidos .jpg',
                            isPrincipal: true,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Button(
                          buttonName: 'Embutidos',
                          buttonColor: colorButton,
                          onPressed: (){
                            Navigator.pushNamed(context, '/dieta_embutidos');
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre las dos columnas
                  // Imagen 2 y botón
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 100,
                          height: 100,
                          child: ImagenWidget(
                            imagesrc: 'assets/images/dieta/pescado y marisco crudo.jpg',
                            isPrincipal: true,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Button(
                          buttonName: 'Pescado crudo',
                          buttonColor: colorButton,
                          onPressed: () {
                            Navigator.pushNamed(context, '/dieta_pescado');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Imagen 1 y botón
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 100,
                          height: 100,
                          child: ImagenWidget(
                            imagesrc: 'assets/images/dieta/dieta 1.jpg',
                            isPrincipal: true,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Button(
                          buttonName: 'Marisco crudo',
                          buttonColor: colorButton,
                          onPressed: () {Navigator.pushNamed(context, '/dieta_marisco');
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16), // Espaciado entre las dos columnas
                  // Imagen 2 y botón
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 100,
                          height: 100,
                          child: ImagenWidget(
                            imagesrc: 'assets/images/dieta/dieta 1.jpg',
                            isPrincipal: true,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Button(
                          buttonName: 'Carne cruda',
                          buttonColor: colorButton,
                          onPressed: () {Navigator.pushNamed(context, '/dieta_carne_cruda');},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                buttonName: 'Volver',
                buttonColor: colorButton,
                onPressed: (){Navigator.pushNamed(context, '/dieta_navegacion');},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void test() {
  print("Siguiente presionado");
}
