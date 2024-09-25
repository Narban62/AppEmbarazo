import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  // Controladores para los campos de entrada
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _cedulaController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCDEE7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeaderWidget(
                color: Color(0xffF75B89),
                text: 'Registro de Usuario',
                isSubtitle: false,
                showButton: false,
              ),
              const SizedBox(height: 20),

              // Texto descriptivo
              const TextWidget(
                  text:
                  "Registra tus datos para continuar con la aplicación."),
              const SizedBox(height: 20),

              // Campos de entrada
              _buildTextField('Nombres', _nombreController),
              const SizedBox(height: 10),
              _buildTextField('Apellidos', _apellidoController),
              const SizedBox(height: 10),
              _buildTextField('Cédula', _cedulaController, keyboardType: TextInputType.number),
              const SizedBox(height: 10),
              _buildTextField('Dirección', _direccionController),
              const SizedBox(height: 10),
              _buildTextField('Teléfono', _telefonoController, keyboardType: TextInputType.phone),
              const SizedBox(height: 10),
              _buildTextField('Correo Electrónico', _emailController, keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 10),
              _buildTextField('Contraseña', _passwordController, isPassword: true),
              const SizedBox(height: 10),
              _buildTextField('Confirmar Contraseña', _confirmPasswordController, isPassword: true),
              const SizedBox(height: 20),

              // Botón de Registro
              Button(
                buttonName: "Registrar",
                buttonColor: const Color(0xffF75B89),
                onPressed: _registerUser,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir campos de entrada
  Widget _buildTextField(String labelText, TextEditingController controller, {bool isPassword = false, TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  // Método para registrar un nuevo usuario
  Future<void> _registerUser() async {
    String nombre = _nombreController.text;
    String apellido = _apellidoController.text;
    String cedula = _cedulaController.text;
    String direccion = _direccionController.text;
    String telefono = _telefonoController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Las contraseñas no coinciden')),
      );
      return;
    }

    try {
      // Registro de usuario en Firebase Authentication
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      // Guardar los datos adicionales en Firestore en la colección 'usuarios'
      if (user != null) {
        await _firestore.collection('usuarios').doc(user.uid).set({
          'nombres': nombre,
          'apellidos': apellido,
          'cedula': cedula,
          'direccion': direccion,
          'telefono': telefono,
          'correo': email,
          'uid': user.uid,  // ID del usuario generado por Firebase
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Usuario registrado con éxito')),
        );
      }

      // Limpiar los campos después del registro
      _nombreController.clear();
      _apellidoController.clear();
      _cedulaController.clear();
      _direccionController.clear();
      _telefonoController.clear();
      _emailController.clear();
      _passwordController.clear();
      _confirmPasswordController.clear();
    } catch (e) {
      print('Error al registrar usuario: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al registrar usuario')),
      );
    }
  }
}
