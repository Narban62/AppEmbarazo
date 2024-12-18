import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/square_button.dart';

class DietaEvitar extends StatefulWidget {
  const DietaEvitar({super.key});

  @override
  State<DietaEvitar> createState() => _DietaEvitarState();
}

class _DietaEvitarState extends State<DietaEvitar> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffAEDAFE);
    const Color colorButton = Color(0xff226EAD);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Encabezados
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

            // Primera fila de botones
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/dieta/embutidos .jpg',
                      text: 'Embutidos',
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_embutidos');
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/dieta/pescado y marisco crudo.jpg',
                      text: 'Pescado crudo',
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_pescado');
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
                      imageSrc: 'assets/images/dieta/dieta 1.jpg',
                      text: 'Marisco crudo',
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_marisco');
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/dieta/dieta 1.jpg',
                      text: 'Carne cruda',
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_carne_cruda');
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Botón de volver
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorButton,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/dieta_navegacion');
                },
                child: const Text(
                  'Volver',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
