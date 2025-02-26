import 'package:app_embarazo/src/widgets/textfield_widget_proyecto.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/services/user_service.dart';
import '../../widgets/textfield_widget.dart';

class MostrarProyectoVidaPage extends StatefulWidget {
  const MostrarProyectoVidaPage({super.key});

  @override
  State<MostrarProyectoVidaPage> createState() => _MostrarProyectoVidaPageState();
}

class _MostrarProyectoVidaPageState extends State<MostrarProyectoVidaPage> {
  final UserService _userService = UserService();
  final TextEditingController autoconocimientoController = TextEditingController();
  final TextEditingController interesesVocacionalesController = TextEditingController();
  final TextEditingController situacionLaboralController = TextEditingController();
  final TextEditingController decisionesController = TextEditingController();
  final TextEditingController controller = TextEditingController();
  String nombreUsuario = '';

  @override
  void initState() {
    super.initState();
    obtenerNombreUsuario();
  }

  Future<void> obtenerNombreUsuario() async {
    try {
      String nombre = await _userService.obtenerNombreCompleto();
      setState(() {
        nombreUsuario = nombre;
      });
      obtenerProyectoDeVida();  // Llamar solo después de obtener el nombre
    } catch (e) {
      print("Error al obtener el nombre: $e");
      setState(() {
        nombreUsuario = 'Usuario no encontrado';  // Mensaje de error para el nombre
      });
    }
  }

  Future<void> obtenerProyectoDeVida() async {
    try {
      User? usuario = FirebaseAuth.instance.currentUser;
      if (usuario != null) {
        String uid = usuario.uid;
        print("UID del usuario: $uid"); // Depuración: verificar UID

        DocumentSnapshot documento = await FirebaseFirestore.instance
            .collection('proyecto_vida')
            .doc(nombreUsuario)
            .get();

        if (documento.exists) {
          var data = documento.data() as Map<String, dynamic>;

          // Verificar los datos recibidos
          print("Datos obtenidos de Firestore: $data");

          setState(() {
            autoconocimientoController.text = data['vida a fututo'] ?? '';
            interesesVocacionalesController.text = data['¿Qué deseo?'] ?? '';
            situacionLaboralController.text = data['¿En cuánto tiempo lo lograré?'] ?? ''; // Corregir el campo
            decisionesController.text = data['¿Cómo lo voy a hacer?'] ?? '';
            controller.text = data['¿En quién me puedo apoyar para lograr?'] ?? '';
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No hay datos guardados')),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al obtener datos: $e')),
      );
      print("Error al obtener datos: $e"); // Depuración: imprimir error
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffd6f8ca);
    const Color colorButton = Color(0xff007900);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              color: colorButton,
              text: 'Proyecto de Vida de $nombreUsuario',
              isSubtitle: true,
              showButton: false,
            ),
            const SizedBox(height: 40),

            // Campo para "Autoconocimiento"
            CustomTextFieldProyecto(
              labelText: 'Vida a fututo',
              controller: autoconocimientoController,
              isPassword: false,
              keyboardType: TextInputType.text,
              readOnly: true, // Para que no se pueda editar
            ),
            const SizedBox(height: 40),

            // Campo para "Intereses Vocacionales"
            CustomTextFieldProyecto(
              labelText: '¿Qué deseo?',
              controller: interesesVocacionalesController,
              isPassword: false,
              keyboardType: TextInputType.text,
              readOnly: true,
            ),
            const SizedBox(height: 40),

            // Campo para "Situación Laboral"
            CustomTextFieldProyecto(
              labelText: '¿En cuánto tiempo lo lograré?',
              controller: situacionLaboralController,
              isPassword: false,
              keyboardType: TextInputType.text,
              readOnly: true,
            ),
            const SizedBox(height: 40),

            // Campo para "Decisiones"
            CustomTextFieldProyecto(
              labelText: '¿Cómo lo voy a hacer?',
              controller: decisionesController,
              isPassword: false,
              keyboardType: TextInputType.text,
              readOnly: true,
            ),
            const SizedBox(height: 40),
            CustomTextFieldProyecto(
              labelText: '¿En quién me puedo apoyar para lograr?',
              controller: controller,
              isPassword: false,
              keyboardType: TextInputType.text,
              readOnly: true,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
