import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ModulosPage extends StatefulWidget {
  const ModulosPage({super.key});

  @override
  State<ModulosPage> createState() => _ModulosPageState();
}

class _ModulosPageState extends State<ModulosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCDEE7),
      body: Column(
        children: [
          const HeaderWidget(
            color: Color(0xffF75B89),
            text: 'Módulos',
            isSubtitle: false,
            showButton: false,
          ),
          
          const TextWidget(text: "Juntas hacia tu autocuidado"),
          Button(
              buttonName: "calidad de vida",
              buttonColor: const Color(0xffF75B89),
              onPressed: () {
                Navigator.pushNamed(context, '/calidad_vida');
              }),
          Button(
              buttonName: "proyecto de vida",
              buttonColor: const Color(0xffF75B89),
              onPressed: () {
                Navigator.pushNamed(context, '/proyecto_vida');
              }),
          Button(
              buttonName: "dieta",
              buttonColor: const Color(0xffF75B89),
              onPressed: () {
                Navigator.pushNamed(context, '/dieta');
              }),
          Button(
              buttonName: "actividad física",
              buttonColor: const Color(0xffF75B89),
              onPressed: () {
                Navigator.pushNamed(context, '/actividad_fisica');
              }),
          Button(
              buttonName: "psicoprofilaxis",
              buttonColor: const Color(0xffF75B89),
              onPressed: () {
                Navigator.pushNamed(context, '/psicoprofilaxis');
              }),
        ],
      ),
    );
  }
}
