import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../pages/inicio_sesion_registro/inicio_sesion.dart';
import '../services/auth_service.dart'; // Asegúrate de importar tu AuthService

class ProfileBottomSheet extends StatefulWidget {
  const ProfileBottomSheet({super.key});

  @override
  _ProfileBottomSheetState createState() => _ProfileBottomSheetState();
}

class _ProfileBottomSheetState extends State<ProfileBottomSheet> {
  final AuthService _authService = AuthService();
  Map<String, dynamic>? userData;

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
          userData = userDoc.data() as Map<String, dynamic>?;
        });
      }
    } catch (e) {
      print('Error al cargar los datos del usuario: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Perfil del Usuario',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: userData == null
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : ListView(
              children: [
                ListTile(
                  title:
                  Text('Nombre: ${userData?['nombres'] ?? 'Sin nombre'}'),
                ),
                ListTile(
                  title: Text(
                      'Apellido: ${userData?['apellidos'] ?? 'Sin apellido'}'),
                ),
                ListTile(
                  title: Text(
                      'Cédula: ${userData?['cedula'] ?? 'Sin cédula'}'),
                ),
                ListTile(
                  title: Text(
                      'Correo: ${userData?['correo'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text(
                      'Teléfono: ${userData?['telefono'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text(
                      'Dirección: ${userData?['direccion'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text(
                      'Intolerancia: ${userData?['intolerancia'] ?? 'No especificado'}'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () async {
                await _authService.signOut(); // Cierra sesión con tu servicio de autenticación

                // Reinicia la navegación a la pantalla de login y elimina todo el historial
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginPage()), // Reemplaza con tu pantalla de login
                      (route) => false, // Esto asegura que ninguna ruta previa permanezca en el historial
                );
              },
              child: const Text('Cerrar Sesión'),
            ),

          ),
        ],
      ),
    );
  }
}
