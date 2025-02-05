import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void guardarSentimiento(String sentimiento) async {
  User? usuario = FirebaseAuth.instance.currentUser;

  if (usuario != null) {
    String uid = usuario.uid;

    // Obtener los datos del usuario desde Firestore
    DocumentSnapshot usuarioDoc =
    await FirebaseFirestore.instance.collection('usuarios').doc(uid).get();

    if (usuarioDoc.exists) {
      var userData = usuarioDoc.data() as Map<String, dynamic>;

      String nombres = userData['nombres'] ?? 'Usuario';
      String apellidos = userData['apellidos'] ?? 'Desconocido';

      // Guardar sentimiento en la colección "diario"
      await FirebaseFirestore.instance.collection('diario').add({
        'uid': uid,
        'nombres': nombres,
        'apellidos': apellidos,
        'sentimiento': sentimiento,
        'fecha': Timestamp.now(),
      });
    } else {
      print("No se encontraron datos del usuario.");
    }
  } else {
    print("Usuario no autenticado.");
  }
}
