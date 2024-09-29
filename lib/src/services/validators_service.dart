class Validators {
  // Valida que las contraseñas coincidan
  static String? validatePasswordMatch(String password, String confirmPassword) {
    if (password != confirmPassword) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }

  // Valida el formato del correo electrónico
  static String? validateEmail(String email) {
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      return 'Correo electrónico no válido';
    }
    return null;
  }

  // Valida que la contraseña tenga una longitud mínima
  static String? validatePassword(String password) {
    if (password.isEmpty || password.length < 6) {
      return 'La contraseña debe tener al menos 6 caracteres';
    }
    return null;
  }
}
