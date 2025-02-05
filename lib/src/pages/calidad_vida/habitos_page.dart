import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/checkbox_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';

import '../../../main.dart';

class HabitosPage extends StatefulWidget {
  const HabitosPage({super.key});

  @override
  State<HabitosPage> createState() => _HabitosPageState();
}

class _HabitosPageState extends State<HabitosPage> {
  // Variables para las preferencias
  bool _beberAgua = false;
  bool _meditar = false;
  bool _sonreir = false;
  bool _comerFruta = false;
  bool _darPaseo = false;
  bool _orar = false;

  // Función para guardar las preferencias en Firebase
  Future<void> guardarPreferencias() async {
    User? usuario = FirebaseAuth.instance.currentUser;
    if (usuario == null) return;

    String uid = usuario.uid;

    // Asegurarse de que al menos dos opciones sean seleccionadas
    int selectedCount = 0;
    List<String> selectedHabits = [];

    if (_beberAgua) {
      selectedCount++;
      selectedHabits.add('Beber agua');
    }
    if (_meditar) {
      selectedCount++;
      selectedHabits.add('Meditar');
    }
    if (_sonreir) {
      selectedCount++;
      selectedHabits.add('Sonreir');
    }
    if (_comerFruta) {
      selectedCount++;
      selectedHabits.add('Comer Fruta');
    }
    if (_darPaseo) {
      selectedCount++;
      selectedHabits.add('Dar un paseo');
    }
    if (_orar) {
      selectedCount++;
      selectedHabits.add('Orar');
    }

    // Si no se seleccionan al menos dos, no guardar
    if (selectedCount < 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Selecciona al menos dos hábitos")),
      );
      return;
    }

    // Obtener el documento del usuario para sus nombres y apellidos
    DocumentSnapshot usuarioDoc = await FirebaseFirestore.instance
        .collection('usuarios') // Asegúrate de que la colección sea la correcta
        .doc(uid)
        .get();

    if (!usuarioDoc.exists) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Usuario no encontrado")),
      );
      return;
    }

    // Obtener los datos del usuario, y dar valores predeterminados si no existen
    String nombres = usuarioDoc.get('nombres') ?? 'Desconocido';
    String apellidos = usuarioDoc.get('apellidos') ?? 'Desconocido';

    // Guardar las preferencias en la colección 'habitos'
    await FirebaseFirestore.instance.collection('habitos').add({
      'nombres': nombres,
      'apellidos': apellidos,
      'preferencias': selectedHabits,
      'uid': uid,
      'fecha_guardado': Timestamp.now(),
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Preferencias guardadas con éxito")),
    );

    Navigator.pushNamed(context, '/calidad_vida');
// Programar las notificaciones
    await programarNotificaciones(selectedHabits);
    // Navegar a otra página

  }


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
              text: 'Los buenos hábitos traen felicidad',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),
            // Reemplaza ImageWithDescriptionCheckbox con tus checkboxes
            ImageWithDescriptionCheckbox(
              imagePath: imagesrc,
              description: 'Beber agua',
              isChecked: _beberAgua,
              onChanged: (bool? newValue) {
                setState(() {
                  _beberAgua = newValue ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
              imagePath: imagesrc,
              description: 'Meditar',
              isChecked: _meditar,
              onChanged: (bool? newValue) {
                setState(() {
                  _meditar = newValue ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
              imagePath: imagesrc,
              description: 'Sonreir',
              isChecked: _sonreir,
              onChanged: (bool? newValue) {
                setState(() {
                  _sonreir = newValue ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
              imagePath: imagesrc,
              description: 'Comer Fruta',
              isChecked: _comerFruta,
              onChanged: (bool? newValue) {
                setState(() {
                  _comerFruta = newValue ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
              imagePath: imagesrc,
              description: 'Dar un paseo',
              isChecked: _darPaseo,
              onChanged: (bool? newValue) {
                setState(() {
                  _darPaseo = newValue ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            ImageWithDescriptionCheckbox(
              imagePath: imagesrc,
              description: 'Orar',
              isChecked: _orar,
              onChanged: (bool? newValue) {
                setState(() {
                  _orar = newValue ?? false;
                });
              },
            ),
            Button(
                buttonName: 'Guardar',
                buttonColor: colorButton,
                onPressed: guardarPreferencias),
          ],
        ),
      ),
    );
  }
}
