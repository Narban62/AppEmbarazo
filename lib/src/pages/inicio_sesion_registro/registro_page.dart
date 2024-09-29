import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/textfield_widget.dart';
import 'package:app_embarazo/src/services/auth_service.dart'; // Servicio de autenticación
import 'package:app_embarazo/src/services/validators_service.dart';        // Validadores
import 'package:app_embarazo/src/services/snackbars_service.dart';   // Helper para snackbars

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

  final AuthService _authService = AuthService(); // Servicio de autenticación

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
                text: "Registra tus datos para continuar con la aplicación.",
              ),
              const SizedBox(height: 20),

              // Campos de entrada utilizando CustomTextField
              CustomTextField(
                labelText: 'Nombres',
                controller: _nombreController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Apellidos',
                controller: _apellidoController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Cédula',
                controller: _cedulaController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Dirección',
                controller: _direccionController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Teléfono',
                controller: _telefonoController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Correo Electrónico',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Contraseña',
                controller: _passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Confirmar Contraseña',
                controller: _confirmPasswordController,
                isPassword: true,
              ),
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

  // Método para registrar un nuevo usuario
  Future<void> _registerUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // Validar contraseñas
    String? passwordError = Validators.validatePasswordMatch(password, confirmPassword);
    if (passwordError != null) {
      SnackbarHelper.show(context, passwordError);
      return;
    }

    // Registrar usuario usando el AuthService
    String? errorMessage = await _authService.registerUser(
      email: email,
      password: password,
      nombre: _nombreController.text,
      apellido: _apellidoController.text,
      cedula: _cedulaController.text,
      direccion: _direccionController.text,
      telefono: _telefonoController.text,
    );

    if (errorMessage != null) {
      SnackbarHelper.show(context, errorMessage);
    } else {
      SnackbarHelper.show(context, 'Usuario registrado con éxito');
      _clearFields();
      // Redirigir a la página de inicio de sesión
      Navigator.pushReplacementNamed(context, '/');  // Suponiendo que '/' es la ruta del login
    }
  }

  // Método para limpiar los campos después del registro
  void _clearFields() {
    _nombreController.clear();
    _apellidoController.clear();
    _cedulaController.clear();
    _direccionController.clear();
    _telefonoController.clear();
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
  }



}
