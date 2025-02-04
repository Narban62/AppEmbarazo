import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> registerUser({
    required String email,
    required String password,
    required String nombre,
    required String apellido,
    required String cedula,
    required String direccion,
    required String telefono,
    required String intolerancia,
    required String ultimaMenstruacion,
  }) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      if (user != null) {
        await _firestore.collection('usuarios').doc(user.uid).set({
          'nombres': nombre,
          'apellidos': apellido,
          'cedula': cedula,
          'direccion': direccion,
          'telefono': telefono,
          'correo': email,
          'intolerancia': intolerancia,
          'ultimaMenstruacion': ultimaMenstruacion,
          'uid': user.uid,
        });
      }

      return null;
    } catch (e) {
      return 'Error al registrar usuario: ' + e.toString();
    }
  }

  Future<String?> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      if (user != null) {
        return null; // Inicio de sesión exitoso
      }
    } catch (e) {
      return 'Error al iniciar sesión: $e';
    }

    return 'Error desconocido';
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
