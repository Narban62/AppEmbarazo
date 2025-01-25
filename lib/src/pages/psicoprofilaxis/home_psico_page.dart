import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class HomePsicoPage extends StatefulWidget {
  const HomePsicoPage({super.key});

  @override
  State<HomePsicoPage> createState() => _HomePsicoPageState();
}

class _HomePsicoPageState extends State<HomePsicoPage> {
  @override
  Widget build(BuildContext context) {

    const Color colorButton =  Color(0xffF75B89);
    const Color color =  Color(0xffFCDEE7);
    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(
                color: colorButton,
                text:
                    'Agencia de Autocuidado: integrando acciones para mantener un embarazo positivo',
                isSubtitle: true,
                showButton: false,
              ),
              const ImagenWidget(
                  imagesrc: 'assets/images/psicoprofilaxis/auditiva4.jpeg',
                  borderRadius: 15.0,
                  isPrincipal: true),
              Button(
                  buttonName: "Estimulación Oportuna",
                  buttonColor: colorButton,
                  onPressed: () {
                    Navigator.pushNamed(context, '/estimulacion_oportuna');
                  }),
              Button(
                  buttonName: "Mejorando tu Respiración",
                  buttonColor: colorButton,
                  onPressed: () {
                    Navigator.pushNamed(context, '/respiracion');
                  }),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
