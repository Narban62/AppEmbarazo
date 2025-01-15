import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 0.8,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Perfil del Usuario',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Nombre: ${user?.displayName ?? 'Sin nombre'}'),
              subtitle: Text('Email: ${user?.email ?? 'Sin correo'}'),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, '/inicio_sesion');
                },
                child: const Text('Cerrar Sesión'),
              ),
            ),
          ],
        );
      },
    );
  }
}
