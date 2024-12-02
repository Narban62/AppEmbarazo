import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/background_widget.dart';
import '../widgets/bubble_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? firstName;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('usuarios')
            .doc(user.uid)
            .get();

        setState(() {
          firstName = userDoc['nombres'].split(' ')[0];
        });
      }
    } catch (e) {
      print('Error al cargar el nombre del usuario: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xffFCDEE7);
    const Color buttonColor = Color(0xffF75B89);

    return Scaffold(
      body: Stack(
        children: [
          const AnimatedBackground(color: bgColor), // Fondo animado
          const AnimatedBubbles(), // Burbujas animadas
          SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(
                  color: buttonColor,
                  text: 'Hola ${firstName ?? ''}',
                  isSubtitle: false,
                  showButton: false,
                ),
                const ImagenWidget(
                  imagesrc:
                  'https://firebasestorage.googleapis.com/v0/b/test-drive-fc508.appspot.com/o/Prueba%20de%20logo.webp?alt=media&token=eabe6e2e-d892-474a-8b33-2df84b9a30a4',
                  borderRadius: 15.0,
                  isPrincipal: true,
                ),
                const TextWidget(
                  text:
                  "¡Bienvenida a la aplicación! Estamos aquí para acompañarte y brindarte todo el apoyo necesario durante esta etapa tan especial. ¡Comencemos!",
                ),

                Button(
                  buttonName: "siguiente",
                  buttonColor: buttonColor,
                  onPressed: () {
                    Navigator.pushNamed(context, '/modulos');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
