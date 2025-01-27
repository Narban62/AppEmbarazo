import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:app_embarazo/src/widgets/textfield_widget.dart';
import 'package:app_embarazo/src/services/auth_service.dart'; // Servicio de autenticación
import 'package:app_embarazo/src/services/validators_service.dart'; // Validadores
import 'package:app_embarazo/src/services/snackbars_service.dart';

import '../../widgets/background_widget.dart';
import '../../widgets/bubble_widget.dart';
import 'bienvenida_page.dart'; // Helper para snackbars

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
  //Agregar la intolerancia a algun alimento
  final TextEditingController _intoleranciaController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final AuthService _authService = AuthService(); // Servicio de autenticación

  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xffFCDEE7);
    const Color color2 = Color(0xffF75B89);
    const Color colorBackground = Colors.white;
    const double spaceBetween = 10.0;
    return Scaffold(
      body: Stack(
          children: [
          const AnimatedBackground(color: color1), // Fondo animado
          const AnimatedBubbles(), // Burbujas animadas
          SingleChildScrollView(
          child: Column(
          children: [// Burbujas animadas
            const HeaderWidget(
              color: color2,
              text: 'Información:',
              isSubtitle: false,
              showButton: false,
            ),

            // Texto descriptivo
            const TextWidget(
              text: "Registra tus datos para continuar con la aplicación.",
            ),
            const SizedBox(height: 20),

            // Campos de entrada utilizando CustomTextField

            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Nombres',
                    controller: _nombreController,
                  ),
                )),

            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Apellidos',
                    controller: _apellidoController,
                  ),
                )),
            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Cédula',
                    controller: _cedulaController,
                    keyboardType: TextInputType.number,
                  ),
                )),
            const SizedBox(height: 10),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Dirección',
                    controller: _direccionController,
                  ),
                )),
            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Teléfono',
                    controller: _telefonoController,
                    keyboardType: TextInputType.phone,
                  ),
                )),
            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Correo Electrónico',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                )),
            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Intolerancia a algún alimento',
                    controller: _intoleranciaController,
                  ),
                )),
            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Contraseña',
                    controller: _passwordController,
                    isPassword: true,
                  ),
                )),
            const SizedBox(height: spaceBetween),
            FractionallySizedBox(
                widthFactor: 0.85, // Ancho del 75%
                child: Container(
                  decoration: BoxDecoration(
                    color: colorBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextField(
                    labelText: 'Confirmar Contraseña',
                    controller: _confirmPasswordController,
                    isPassword: true,
                  ),
                )),
            const SizedBox(height: 20),

            // Botón de Registro
            Button(
              buttonName: "Registrar",
              buttonColor: color2,
              onPressed: _registerUser,

            ),
          ],
        ),
          ),
          ],
      ),
    );

  }

  // Método para registrar un nuevo usuario
  Future<void> _registerUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // Validar contraseñas
    String? passwordError =
    Validators.validatePasswordMatch(password, confirmPassword);
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
      intolerancia: _intoleranciaController.text,
    );

    if (errorMessage == null) {
      // Registro exitoso
      SnackbarHelper.show(context, '¡Registro exitoso!');

      // Limpiar los campos
      _clearFields();

      // Navegar a la siguiente interfaz
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()), // Cambiar por la pantalla deseada
      );
    } else {
      // Mostrar error si el registro falló
      SnackbarHelper.show(context, errorMessage);
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
    _intoleranciaController.clear();
  }
}
