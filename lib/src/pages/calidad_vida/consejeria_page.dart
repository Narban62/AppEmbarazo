import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            ImagenWidget(
                imagesrc: 'assets/images/calidad_vida/consejeria/img_1.png',
                isPrincipal: true),
            Button(buttonName: 'Grupos de Apoyo: familia, amigos/as', buttonColor: colorButton, onPressed: abrirWhatsApp),

          ],
        ),
      ),
    );
  }
}
void abrirWhatsApp() async {
  const String telefono = "+1234567890"; // Reemplaza con el número real
  const String mensaje = "Hola, quiero agendar una cita.";
  final String url = "https://wa.me/$telefono?text=${Uri.encodeComponent(mensaje)}";

  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    print("No se pudo abrir WhatsApp");
  }
}