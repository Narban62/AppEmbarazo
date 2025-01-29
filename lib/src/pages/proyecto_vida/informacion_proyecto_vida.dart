import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/menu_widget.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/services/user_service.dart';
import '../../widgets/textfield_widget.dart';

class InfoProyectoVidaPage extends StatefulWidget {
  const InfoProyectoVidaPage({super.key});

  @override
  State<InfoProyectoVidaPage> createState() => _InfoProyectoVidaPageState();
}

class _InfoProyectoVidaPageState extends State<InfoProyectoVidaPage> {
  String nombreUsuario = '';
  final UserService _userService = UserService();
  final TextEditingController autoconocimientoController = TextEditingController();
  final TextEditingController interesesvocController = TextEditingController();
  final TextEditingController sitacionlaboralController = TextEditingController();
  final TextEditingController decisionesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    verificarSiYaTieneProyecto();
  }

  Future<void> verificarSiYaTieneProyecto() async {
    User? usuario = FirebaseAuth.instance.currentUser;
    if (usuario != null) {
      String uid = usuario.uid;

      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('usuarios').doc(uid).get();
      if (userDoc.exists) {
        var userData = userDoc.data() as Map<String, dynamic>;
        String nombres = userData['nombres'] ?? 'Usuario';
        String apellidos = userData['apellidos'] ?? 'Desconocido';
        String nombreCompleto = '$nombres $apellidos';

        DocumentSnapshot proyectoDoc = await FirebaseFirestore.instance.collection('proyecto_vida').doc(nombreCompleto).get();
        if (proyectoDoc.exists) {
          // Si ya existe el proyecto, ir a la siguiente pantalla
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, '/guardar_proyecto_vida');
          });
        } else {
          // Si no existe, mostrar la pantalla normal
          setState(() {
            nombreUsuario = nombreCompleto;
          });
        }
      }
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
              text: 'Hola $nombreUsuario,\nbienvenida a tu proyecto de vida',
              isSubtitle: true,
              showButton: true,
            ),
            const SizedBox(height: 20),
            _buildSection('Autoconocimiento', 'Más información sobre el autoconocimiento.', autoconocimientoController),
            _buildSection('Intereses Vocacionales', 'Más información sobre tus intereses vocacionales.', interesesvocController),
            _buildSection('Situación Laboral', 'Más información sobre tu situación laboral.', sitacionlaboralController),
            _buildSection('Decisiones', 'Más información sobre tus decisiones futuras.', decisionesController),

            const SizedBox(height: 20),
            Button(
              buttonName: 'Guardar',
              buttonColor: colorButton,
              onPressed: guardarProyectoDeVida,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String info, TextEditingController controller) {
    return Column(
      children: [
        MenuWidget(
          titulo: title,
          contenido: info,
          informacionAdicional: info,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: CustomTextField(
            labelText: title,
            controller: controller,
            isPassword: false,
            keyboardType: TextInputType.text,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Future<void> guardarProyectoDeVida() async {
    try {
      User? usuario = FirebaseAuth.instance.currentUser;

      if (usuario != null) {
        String uid = usuario.uid;

        DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('usuarios').doc(uid).get();
        if (userDoc.exists) {
          var userData = userDoc.data() as Map<String, dynamic>;
          String nombres = userData['nombres'] ?? 'Usuario';
          String apellidos = userData['apellidos'] ?? 'Desconocido';
          String nombreCompleto = '$nombres $apellidos';

          await FirebaseFirestore.instance.collection('proyecto_vida').doc(nombreCompleto).set({
            'autoconocimiento': autoconocimientoController.text,
            'interesesvoc': interesesvocController.text,
            'situacionlaboral': sitacionlaboralController.text,
            'decisiones': decisionesController.text,
            'fecha': DateTime.now(),
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Datos guardados exitosamente')),
          );

          Navigator.pushReplacementNamed(context, '/guardar_proyecto_vida');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Usuario no autenticado')),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al guardar datos: $e')),
      );
    }
  }
}
