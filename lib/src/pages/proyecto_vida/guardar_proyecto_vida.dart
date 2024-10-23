import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Auth
import 'package:cloud_firestore/cloud_firestore.dart'; // Firestore
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/services/user_service.dart';

import '../../widgets/textfield_widget.dart';

class GuardarProyectoVidaPage extends StatefulWidget {
  const GuardarProyectoVidaPage({super.key});

  @override
  State<GuardarProyectoVidaPage> createState() => _GuardarProyectoVidaPageState();
}

class _GuardarProyectoVidaPageState extends State<GuardarProyectoVidaPage> {
  final UserService _userService = UserService(); // Instancia de UserService
  final TextEditingController autoconocimientoController = TextEditingController(); // Controlador para Autoconocimiento
  final TextEditingController visualizacionController = TextEditingController(); // Controlador para Visualización
  final TextEditingController metasController = TextEditingController(); // Controlador para Metas
  String nombreUsuario = ''; // Aquí se almacenará el nombre del usuario

  @override
  void initState() {
    super.initState();
    obtenerNombreUsuario(); // Llamamos a la función para obtener el nombre
  }

  // Función para obtener el nombre utilizando el servicio
  Future<void> obtenerNombreUsuario() async {
    String nombre = await _userService.obtenerNombreUsuario();
    setState(() {
      nombreUsuario = nombre;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffB4FF9A);
    const Color colorButton = Color(0xff007900);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // El saludo dinámico se pasa al HeaderWidget
            HeaderWidget(
              color: colorButton,
              text: 'Proyecto de Vida de $nombreUsuario',
              isSubtitle: true,
              showButton: true,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),

            // Campo para "Autoconocimiento"
            CustomTextField(
              labelText: 'Autoconocimiento',
              controller: autoconocimientoController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),

            // Campo para "Visualización"
            CustomTextField(
              labelText: 'Visualización',
              controller: visualizacionController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),

            // Campo para "Metas"
            CustomTextField(
              labelText: 'Metas',
              controller: metasController,
              isPassword: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 40.0)),

            // Botón para guardar
            Button(
              buttonName: 'Guardar',
              buttonColor: colorButton,
              onPressed: guardarProyectoDeVida, // Función para guardar en Firebase
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
          ],
        ),
      ),
    );
  }

  // Función para guardar los datos en Firebase
  Future<void> guardarProyectoDeVida() async {
    try {
      User? usuario = FirebaseAuth.instance.currentUser; // Obtenemos el usuario actual

      if (usuario != null) {
        String uid = usuario.uid; // Obtenemos el uid del usuario autenticado

        // Crear un documento en la colección 'proyecto de vida' usando el uid del usuario
        await FirebaseFirestore.instance.collection('proyecto_vida').doc(uid).set({
          'autoconocimiento': autoconocimientoController.text,
          'visualizacion': visualizacionController.text,
          'metas': metasController.text,
          'fecha': DateTime.now(), // Podemos añadir la fecha de creación
        });

        // Mostrar un mensaje de éxito
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Datos guardados exitosamente')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Usuario no autenticado')),
        );
      }
    } catch (e) {
      // En caso de error, mostramos un mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al guardar datos: $e')),
      );
    }
  }
}

void test() {
  print("test Josue");
}
