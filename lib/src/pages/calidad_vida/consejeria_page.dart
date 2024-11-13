import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ConsejeriaPage extends StatefulWidget {
  const ConsejeriaPage({super.key});

  @override
  State<ConsejeriaPage> createState() => _ConsejeriaPageState();
}

class _ConsejeriaPageState extends State<ConsejeriaPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: 'Red de Apoyo y Comunidad',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            TextWidget(text: 'Grupos de Apoyo: familia, amigos/as'),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            TextWidget(
                text:
                    'Recuerda: nos amamos, nos queremos y somos únicas. Tu eres valiosa tal y como eres y tu bebe te ama por eso. '),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            HeaderWidget(
                text: 'Consejería y Orientación Emocional',
                color: color,
                isSubtitle: true,
                showButton: false),
            ImagenWidget(imagesrc: imagesrc, isPrincipal: true),
            Button(buttonName: 'Agenda tu cita', buttonColor: colorButton, onPressed: test)
          ],
        ),
      ),
    );
  }
}
void test() {
  print('test');
}
