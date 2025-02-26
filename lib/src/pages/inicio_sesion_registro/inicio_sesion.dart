import 'package:app_embarazo/src/pages/home_page.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/textfield_widget.dart';
import 'package:app_embarazo/src/services/auth_service.dart'; // Servicio de autenticación
import 'package:app_embarazo/src/services/snackbars_service.dart'; // Helper para snackbars
import 'package:app_embarazo/src/services/validators_service.dart';

import '../../widgets/background_widget.dart';
import '../../widgets/bubble_widget.dart'; // Validadores

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
    const Color color = Color(0xffFCDEE7);
    const Color color2 = Color(0xffF75B89);
    return Scaffold(
      body: Stack(
        children: [
          const AnimatedBackground(color: color), // Fondo animado
          const AnimatedBubbles(), // Burbujas animadas
          SingleChildScrollView(
          child:Column(
            children: [
              const HeaderWidget(
                color: color2,
                text: 'Iniciar Sesión',
                isSubtitle: false,
                showButton: false,
              ),

              // Imagen ajustada para que escale correctamente
              const ImagenWidget(
                  imagesrc: 'assets/images/splash/img.png',
                  isPrincipal: false),

              const Padding(padding: EdgeInsets.only(bottom: 20.0)),

              // Campos de entrada utilizando CustomTextField
              FractionallySizedBox(
                widthFactor: 0.85,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Correo Electrónico',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              FractionallySizedBox(
                widthFactor: 0.85,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Contraseña',
                    controller: _passwordController,
                    isPassword: true,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _showResetPasswordDialog(context, _authService); // Mostrar diálogo de restablecimiento de contraseña
                },
                child: const Text(
                  "¿Olvidaste tu contraseña? ",
                  style: TextStyle(color: color2),
                ),
              ),

              // Botón de Iniciar Sesión
              Button(
                buttonName: "Iniciar Sesión",
                buttonColor: color2,
                onPressed: _loginUser,
              ),

              // Opción de registro
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registro'); // Navegar a la página de registro
                },
                child: const Text(
                  "¿No tienes cuenta? Regístrate aquí",
                  style: TextStyle(color: color2),
                ),
              ),
            ],
          ),
          ),
        ],
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
      }
        } else {
      // Mostrar errores de validación
      SnackbarHelper.show(context, emailError ?? 'Error desconocido'); // Mostrar error de email
          SnackbarHelper.show(context, passwordError ?? 'Error desconocido'); // Mostrar error de contraseña
        }
    String? errorMessage = await _authService.loginUser(email: email, password: password);

    if (errorMessage == null) {
      // Registro exitoso
      SnackbarHelper.show(context, '¡Inicio de sesión exitoso!');

      // Limpiar los campos
      _clearFields();

      // Navegar a la siguiente interfaz
      Navigator.pushNamed(context, '/home_page');
    } else {
      // Mostrar error si el registro falló
      SnackbarHelper.show(context, errorMessage);
    }

  }

  // Método para limpiar los campos después del inicio de sesión
  void _clearFields() {
    _emailController.clear();
    _passwordController.clear();
  }
}

void _showResetPasswordDialog(BuildContext context, AuthService _authService) {
    final TextEditingController _resetEmailController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Restablecer contraseña'),
          content: TextField(
            controller: _resetEmailController,
            decoration: const InputDecoration(
              labelText: 'Correo Electrónico',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          actions: [
            TextButton(
              onPressed: () async {
                String email = _resetEmailController.text;
                String? emailError = Validators.validateEmail(email);

                if (emailError == null) {
                  String? errorMessage = await _authService.resetPassword(email: email);
                  if (errorMessage == null) {
                    SnackbarHelper.show(context, 'Correo de restablecimiento enviado');
                  } else {
                    SnackbarHelper.show(context, errorMessage);
                  }
                } else {
                  SnackbarHelper.show(context, emailError);
                }

                Navigator.of(context).pop();
              },
              child: const Text('Enviar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }