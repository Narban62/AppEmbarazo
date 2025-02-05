import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/button_back.dart';
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
              text: 'Cada bocado cuenta',
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
                        Navigator.pushNamed(context, '/dieta_marisco');
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
                      imageSrc: 'assets/images/dieta/cafe.jpeg',
                      text: 'No cafeína',
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_cafeina');
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/dieta/Picture8.png',
                      text: 'No alcohol',
                      onPressed: () {
                        Navigator.pushNamed(context, '/dieta_cerveza');
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
