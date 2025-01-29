import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  // Función para obtener el nombre y apellido del usuario desde Firestore
  Future<String> obtenerNombreCompleto() async {
    User? usuario = FirebaseAuth.instance.currentUser;

    if (usuario != null) {
      String uid = usuario.uid;

      // Consultar Firestore para obtener los datos del usuario
      DocumentSnapshot documento =
      await FirebaseFirestore.instance.collection('usuarios').doc(uid).get();

      if (documento.exists) {
        var userData = documento.data() as Map<String, dynamic>;
        String nombres = userData['nombres'] ?? 'Usuario';
        String apellidos = userData['apellidos'] ?? 'Desconocido';

        return '$nombres $apellidos';
      } else {
        return 'Usuario no encontrado';
      }
    } else {
      return 'Usuario no autenticado';
    }
  }
}
