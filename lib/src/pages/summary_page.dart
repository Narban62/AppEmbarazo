import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class UserSummaryView extends StatefulWidget {
  const UserSummaryView({Key? key}) : super(key: key);

  @override
  State<UserSummaryView> createState() => _UserSummaryViewState();
}

class _UserSummaryViewState extends State<UserSummaryView> {

  Color backgroundColor = const Color.fromARGB(255, 158, 64, 145);
  Color buttonUpdateColor = const Color.fromARGB(255, 185, 38, 187);
  Color buttonSignOutColor = const Color.fromARGB(255, 68, 4, 70);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Map<String, dynamic>? userData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    setState(() => isLoading = true);
    User? currentUser = _auth.currentUser;

    if (currentUser != null) {
      DocumentSnapshot userDoc =
          await _firestore.collection('usuarios').doc(currentUser.uid).get();

      if (userDoc.exists) {
        setState(() {
          userData = userDoc.data() as Map<String, dynamic>?;
          isLoading = false;
        });
      }
    }
  }

  Future<void> _updateUserData(String nombre, String apellido, String fechaNacimiento) async {
    User? currentUser = _auth.currentUser;

    if (currentUser != null) {
      await _firestore.collection('usuarios').doc(currentUser.uid).update({
        'nombres': nombre,
        'apellidos': apellido,
        'fechaNacimiento': fechaNacimiento,
      });
      _fetchUserData();
    }
  }

  void _showUpdateDialog() {
    TextEditingController nameController =
        TextEditingController(text: userData?['nombres']);
    TextEditingController surnameController =
        TextEditingController(text: userData?['apellidos']);
    TextEditingController dobController =
        TextEditingController(text: userData?['fechaNacimiento'] ?? '');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Actualizar Datos'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
              ),
              TextField(
                controller: surnameController,
                decoration: const InputDecoration(labelText: 'Apellido'),
              ),
          ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                _updateUserData(
                  nameController.text,
                  surnameController.text,
                  dobController.text,
                );
                Navigator.pop(context);
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _signOut() async {
    await _auth.signOut();
    Navigator.pushReplacementNamed(context, '/inicio_sesion'); // Redirige al login
  }

  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: backgroundColor,
    appBar: AppBar(title: const Text('Información de Usuario')),
    body: isLoading
        ? const Center(child: CircularProgressIndicator())
        : Center( // Agregamos el Center para centrar el contenido
            child: Column(
              mainAxisSize: MainAxisSize.min, // Esto centra verticalmente el contenido
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Nombre: ${userData?['nombres'] ?? 'N/A'}\n'
                      'Apellido: ${userData?['apellidos'] ?? 'N/A'}\n'
                      'Email: ${_auth.currentUser?.email ?? 'N/A'}\n'
                      'Número de logeos: ${userData?['loginCount'] ?? 0}',
                ),
                Button(
                  buttonName: 'Actualizar Datos',
                  buttonColor: buttonUpdateColor,
                  onPressed: _showUpdateDialog,
                ),
                Button(
                  buttonName: 'Cerrar Sesión',
                  buttonColor: buttonSignOutColor,
                  onPressed: _signOut,
                ),
              ],
            ),
          ),
  );

  }
}
