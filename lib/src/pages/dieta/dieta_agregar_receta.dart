import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class DietaAgregarReceta extends StatefulWidget {
  const DietaAgregarReceta({super.key});

  @override
  State<DietaAgregarReceta> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaAgregarReceta> {
  final TextEditingController nombreRecetaController = TextEditingController();
  final TextEditingController ingredientesController = TextEditingController();
  final TextEditingController preparacionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffAEDAFE);
    const Color colorButton = Color(0xff226EAD);
    const double spaceBetween = 30.0;

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
            const HeaderWidget(
              text: 'Personaliza tus platos favoritos:',
              color: color,
              isSubtitle: true,
            ),
            const SizedBox(height: spaceBetween),
            CustomTextField(
              labelText: 'Nombre de la receta',
              controller: nombreRecetaController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: spaceBetween),
            CustomTextField(
              labelText: 'Ingredientes',
              controller: ingredientesController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: spaceBetween),
            CustomTextField(
              labelText: 'Preparación',
              controller: preparacionController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: spaceBetween),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Button(
                      buttonName: 'Guardar',
                      buttonColor: colorButton,
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_navegacion');
                      },
                    ),
                  ),
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
