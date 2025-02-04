import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/background_widget.dart';
import '../widgets/bubble_widget.dart';
import '../services/auth_service.dart'; // Asegúrate de importar tu AuthService

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _authService = AuthService();
  Map<String, dynamic>? userData;

  String? firstName;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
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
          userData = userDoc.data() as Map<String, dynamic>?;

          // Asegurar que la primera letra del nombre sea mayúscula
          if (userData != null && userData!['nombres'] != null) {
            userData!['nombres'] = capitalizeFirstLetter(userData!['nombres']);
          }
        });
      }
    } catch (e) {
      print('Error al cargar los datos del usuario: $e');
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
                  text: 'Hola ${userData?['nombres'] ?? 'Sin nombre'}',
                  isSubtitle: false,
                  showButton: false,
                  textAlign: TextAlign.center,
                ),
                const ImagenWidget(
                  imagesrc:
                  'assets/images/inicio/inicio_sesion.jpg',
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
