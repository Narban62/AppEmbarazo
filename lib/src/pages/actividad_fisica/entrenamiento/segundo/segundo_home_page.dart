import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class SegundoHomePage extends StatefulWidget {
  const SegundoHomePage({super.key});

  @override
  State<SegundoHomePage> createState() => _SegundoHomePageState();
}

class _SegundoHomePageState extends State<SegundoHomePage> {
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Indicaciones'),
          content: Container(
            height: 300,
            width: double.maxFinite,
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 4,
              radius: const Radius.circular(6),
              scrollbarOrientation: ScrollbarOrientation.right,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ListTile(
                      leading: Icon(Icons.check),
                      title: Text(
                          'Ejercítate regularmente, pero sin llegar a la extenuación.'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Mantente hidratada en todo momento.'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.check),
                      title: Text(
                          'Evita realizar ejercicio en lugares húmedos o calurosos.'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.check),
                      title: Text(
                          'Usa zapatos cerrados, suela de goma y ropa cómoda.'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Evita ejercicios que te provoquen pujar.'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.check),
                      title: Text(
                          'Evita actividades con peligro de caída o contacto físico.'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.add_circle_outline),
                      title: const Text(
                          'Conoce las razones para parar de realizar Actividad Física y consulta a un especialista en cuanto notes una de ellas.'),
                      onTap: () {
                        Navigator.of(context).pop();
                        _showMoreInstructions(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  void _showMoreInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Más Indicaciones'),
          content: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text('Falta de respiración/aliento.'),
              ),
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text('Dolor en el pecho. '),
              ),
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text(
                    'Contracciones dolorosas en el útero (más de 6-8 por hora). '),
              ),
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text('Sangrado vaginal.'),
              ),
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text('Cualquier líquido o fluido vaginal. '),
              ),
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text('Mareos o pérdidas de equilibrio. '),
              ),
            ]),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Entendido'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffFFC5AA);
    const Color colorButton = Color(0xffFF8243);
    const Color bgVideoColor = Color.fromARGB(255, 248, 140, 172);

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
              text: 'Ejercicios recomendados',
              color: colorButton,
              isSubtitle: true,
              showButton: true,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                buttonName: 'PAUTAS DE SEGURIDAD',
                buttonColor: colorButton,
                onPressed: () => _showAlertDialog(context),
              ),
            ),
            const ImagenWidget(
                imagesrc: 'assets/images/actividad_fisica/segundo_trimestre/img_1.png',
                isPrincipal: false),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Button(
                      buttonName: 'Instrucciones',
                      buttonColor: colorButton,
                      onPressed: () {
                        Navigator.pushNamed(context, '/segundo_instrucciones');
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los botones

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
