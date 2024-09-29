import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/textfield_widget.dart';
import 'package:app_embarazo/src/services/auth_service.dart'; // Servicio de autenticación
import 'package:app_embarazo/src/services/snackbars_service.dart'; // Helper para snackbars
import 'package:app_embarazo/src/services/validators_service.dart'; // Validadores

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controladores para los campos de entrada
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                text: 'Iniciar Sesión',
                isSubtitle: false,
                showButton: false,
              ),
              const SizedBox(height: 20),

              // Texto descriptivo
              const TextWidget(
                text: "Ingresa tu correo electrónico y contraseña para continuar.",
              ),
              const SizedBox(height: 20),

              // Campos de entrada utilizando CustomTextField
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
              const SizedBox(height: 20),

              // Botón de Iniciar Sesión
              Button(
                buttonName: "Iniciar Sesión",
                buttonColor: const Color(0xffF75B89),
                onPressed: _loginUser,
              ),
              const SizedBox(height: 10),

              // Opción de registro
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registro'); // Navegar a la página de registro
                },
                child: const Text(
                  "¿No tienes cuenta? Regístrate aquí",
                  style: TextStyle(color: Color(0xffF75B89)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para iniciar sesión
  Future<void> _loginUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Validar campos de entrada
    String? emailError = Validators.validateEmail(email);
    String? passwordError = Validators.validatePassword(password); // Usar nueva validación de contraseña

    if (emailError == null && passwordError == null) {
      // Ambas validaciones pasaron, proceder con el inicio de sesión
      String? errorMessage = await _authService.loginUser(email: email, password: password);

      if (errorMessage != null) {
        SnackbarHelper.show(context, errorMessage);
      } else {
        SnackbarHelper.show(context, 'Inicio de sesión exitoso');
        _clearFields();
        Navigator.pushReplacementNamed(context, '/home'); // Redirigir a la página principal
      }
    } else {
      // Mostrar errores de validación
      if (emailError != null) {
        SnackbarHelper.show(context, emailError); // Mostrar error de email
      }
      if (passwordError != null) {
        SnackbarHelper.show(context, passwordError); // Mostrar error de contraseña
      }
    }
  }



  // Método para limpiar los campos después del inicio de sesión
  void _clearFields() {
    _emailController.clear();
    _passwordController.clear();
  }
}
