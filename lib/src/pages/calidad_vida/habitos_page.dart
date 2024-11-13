import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/checkbox_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HabitosPage extends StatefulWidget {
  const HabitosPage({super.key});

  @override
  State<HabitosPage> createState() => _HabitosPageState();
}

class _HabitosPageState extends State<HabitosPage> {
  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';
    bool _isChecked = false;

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: 'Los buenos habitos traen felicidad',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            ImageWithDescriptionCheckbox(
                imagePath: imagesrc,
                description: 'Prueba',
                isChecked: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                }),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
                imagePath: imagesrc,
                description: 'Prueba',
                isChecked: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                }),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
                imagePath: imagesrc,
                description: 'Prueba',
                isChecked: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                }),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
                imagePath: imagesrc,
                description: 'Prueba',
                isChecked: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                }),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
                imagePath: imagesrc,
                description: 'Prueba',
                isChecked: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                }),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
                imagePath: imagesrc,
                description: 'Prueba',
                isChecked: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                }),
            Button(
                buttonName: 'continuar',
                buttonColor: colorButton,
                onPressed: () => Navigator.pushNamed(context, '/consejeria')),
          ],
        ),
      ),
    );
  }
}
