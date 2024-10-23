import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  // Función para obtener el nombre desde Firestore utilizando el uid del usuario
  Future<String> obtenerNombreUsuario() async {
    User? usuario = FirebaseAuth.instance.currentUser;

    if (usuario != null) {
      String uid = usuario.uid;

      // Consultar Firestore para obtener el nombre del usuario basado en su uid
      DocumentSnapshot documento =
      await FirebaseFirestore.instance.collection('usuarios').doc(uid).get();

      if (documento.exists) {
        var userData = documento.data() as Map<String, dynamic>;
        return userData['nombres'] ?? 'Usuario12'; // Si no hay nombre, se usa 'Usuario'
      } else {
        return 'Usuario no encontrado';
      }
    } else {
      return 'Usuario no autenticado';
    }
  }
}
