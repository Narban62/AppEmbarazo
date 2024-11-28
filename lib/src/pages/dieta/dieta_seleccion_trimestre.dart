import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu_seleccionable_widget.dart';

class DietaPageTrimestre extends StatefulWidget {
  const DietaPageTrimestre({super.key});

  @override
  State<DietaPageTrimestre> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaPageTrimestre> {
  final TextEditingController intoleranciaController = TextEditingController(); // Controlador para Autoconocimiento
  String selectedTrimester = 'Primer trimestre';
  final List<String> trimesters = [
    'Primer trimestre',
    'Segundo trimestre',
    'Tercer trimestre',
  ];

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
              text: 'Bienvenida:\nCada bocado cuenta',
              isSubtitle: true,
              showButton: true,
            ),
            const ImagenWidget(
              imagesrc: 'assets/images/dieta/dieta 1.jpg',
              isPrincipal: true,
            ),
            const HeaderWidget(
              text: '¿En qué trimestre te encuentras?',
              color: color,
              isSubtitle: true,
            ),
            DropdownMenuWidget(
              options: trimesters,
              selectedValue: selectedTrimester,
              onChanged: (newValue) {
                setState(() {
                  selectedTrimester = newValue!;
                });
              },
            ),
            const HeaderWidget(
              text: '¿Tienes intolerancia a algún alimento?',
              color: color,
              isSubtitle: true,
            ),
            CustomTextField(
              labelText: 'Intolerancia',
              controller: intoleranciaController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10), // Espacio entre los botones
                  Expanded(
                    child: Button(
                      buttonName: 'Siguiente',
                      buttonColor: colorButton,
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_navegacion');
                      },
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
