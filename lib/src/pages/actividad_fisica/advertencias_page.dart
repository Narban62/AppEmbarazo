import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ContraindicacionesPage1 extends StatelessWidget {
  const ContraindicacionesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContraindicacionesWidget(
        titulo: 'LA ACTIVIDAD FÍSICA ESTÁ CONTRAINDICADA EN LOS SIGUIENTES CASOS',
        contenido: const [
          'Ruptura de membranas',
          'Sangrado vaginal persistente inexplicable',
          'Presión alta o Preeclampsia',
          'Cuello uterino incompetente',
          'Embarazo múltiple (trillizos o más)',
          'Diabetes tipo 1 no controlada',
          'Hipertensión no controlada',
          'Enfermedad tiroidea no controlada',
          'Otro trastorno cardiovascular, respiratorio o sistémico grave',
        ],
        onSiPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContraindicacionesPage2(),
            ),
          );
        },
      ),
    );
  }
}

class ContraindicacionesPage2 extends StatelessWidget {
  const ContraindicacionesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ContraindicacionesWidget(
      titulo: 'OTROS CASOS DONDE SE DEBE CONSULTAR AL MÉDICO',
      contenido: const [
        'Dolor de cabeza severo',
        'Mareos persistentes',
        'Falta de aire en reposo',
        'Fatiga extrema',
        'Contracciones regulares antes de tiempo',
        'Pérdida de líquido amniótico',
      ],
      onSiPressed: () {
        Navigator.pushNamed(context, '/opciones');
      },
    );
  }
}


class ContraindicacionesWidget extends StatelessWidget {
  final String titulo;
  final List<String> contenido;
  final VoidCallback onSiPressed;

  const ContraindicacionesWidget({
    super.key,
    required this.titulo,
    required this.contenido,
    required this.onSiPressed,
  });

  @override
  Widget build(BuildContext context) {
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';
    const Color colorButton = Colors.orange;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),// Cambia la ruta si es necesario
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: contenido.length,
                itemBuilder: (context, index) {
                  return Text(
                    '- ${contenido[index]}',
                    style: const TextStyle(fontSize: 16),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text('¿Presentas alguna de estas condiciones?',
                style: const TextStyle(fontSize: 16)),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Button(
                      buttonName: 'Si',
                      buttonColor: colorButton,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los botones
                  Expanded(
                    child: Button(
                      buttonName: 'NO',
                      buttonColor: colorButton,
                      onPressed: onSiPressed,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
/**
 * import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContraindicacionesPage1 extends StatelessWidget {
  const ContraindicacionesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkContraindicaciones(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData && snapshot.data == true) {
          return Center(child: Text('No tienes contraindicaciones.'));
        }
        return Scaffold(
          body: ContraindicacionesWidget(
            titulo:
                'LA ACTIVIDAD FÍSICA ESTÁ CONTRAINDICADA EN LOS SIGUIENTES CASOS',
            contenido: [
              'Ruptura de membranas',
              'Sangrado vaginal persistente inexplicable',
              'Presión alta o Preeclampsia',
              'Cuello uterino incompetente',
              'Embarazo múltiple (trillizos o más)',
              'Diabetes tipo 1 no controlada',
              'Hipertensión no controlada',
              'Enfermedad tiroidea no controlada',
              'Otro trastorno cardiovascular, respiratorio o sistémico grave',
            ],
            onSiPressed: () {
              _showContactDoctorDialog(context);
            },
            onNoPressed: () {
              _incrementNoCounter(context);
            },
          ),
        );
      },
    );
  }

  Future<bool> _checkContraindicaciones() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return false;

    final doc = await FirebaseFirestore.instance
        .collection('usuarios')
        .doc(user.uid)
        .get();
    return doc.exists && doc.data()?['no_contraindicaciones'] == true;
  }

  void _incrementNoCounter(BuildContext context) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final docRef =
        FirebaseFirestore.instance.collection('usuarios').doc(user.uid);
    final doc = await docRef.get();

    int noCounter = 0;
    if (doc.exists && doc.data() != null) {
      noCounter = doc.data()!['no_counter'] ?? 0;
    }

    noCounter++;

    await docRef.set({
      'no_counter': noCounter,
      'no_contraindicaciones': noCounter >= 2,
    }, SetOptions(merge: true));

    if (noCounter >= 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const EjerciciosPage(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ContraindicacionesPage2(),
        ),
      );
    }
  }

  void _showContactDoctorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Advertencia'),
          content: Text('Debes contactarte con tu doctora.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cerrar'),
            ),
            TextButton(
              onPressed: () {
                _launchWhatsApp();
              },
              child: Text('Mensaje'),
            ),
          ],
        );
      },
    );
  }

  void _launchWhatsApp() async {
    const phoneNumber =
        '1234567890'; // Reemplaza con el número de teléfono de la doctora
    const message = 'Hola, necesito contactarme con usted.';
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir WhatsApp';
    }
  }
}

class ContraindicacionesPage2 extends StatelessWidget {
  const ContraindicacionesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkContraindicaciones(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData && snapshot.data == true) {
          return Center(child: Text('No tienes contraindicaciones.'));
        }
        return Scaffold(
          body: ContraindicacionesWidget(
            titulo: 'OTROS CASOS DONDE SE DEBE CONSULTAR AL MÉDICO',
            contenido: [
              'Dolor de cabeza severo',
              'Mareos persistentes',
              'Falta de aire en reposo',
              'Fatiga extrema',
              'Contracciones regulares antes de tiempo',
              'Pérdida de líquido amniótico',
            ],
            onSiPressed: () {
              _showContactDoctorDialog(context);
            },
            onNoPressed: () {
              _incrementNoCounter(context);
            },
          ),
        );
      },
    );
  }

  Future<bool> _checkContraindicaciones() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return false;

    final doc = await FirebaseFirestore.instance
        .collection('usuarios')
        .doc(user.uid)
        .get();
    return doc.exists && doc.data()?['no_contraindicaciones'] == true;
  }

  void _incrementNoCounter(BuildContext context) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final docRef =
        FirebaseFirestore.instance.collection('usuarios').doc(user.uid);
    final doc = await docRef.get();

    int noCounter = 0;
    if (doc.exists && doc.data() != null) {
      noCounter = doc.data()!['no_counter'] ?? 0;
    }

    noCounter++;

    await docRef.set({
      'no_counter': noCounter,
      'no_contraindicaciones': noCounter >= 2,
    }, SetOptions(merge: true));

    if (noCounter >= 2) {
      Navigator.pushNamed(context, '/opciones');
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ContraindicacionesPage2(),
        ),
      );
    }
  }

  void _showContactDoctorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Advertencia'),
          content: Text('Debes contactarte con tu doctora.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cerrar'),
            ),
            TextButton(
              onPressed: () {
                _launchWhatsApp();
              },
              child: Text('Mensaje'),
            ),
          ],
        );
      },
    );
  }

  void _launchWhatsApp() async {
    const phoneNumber =
        '1234567890'; // Reemplaza con el número de teléfono de la doctora
    const message = 'Hola, necesito contactarme con usted.';
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir WhatsApp';
    }
  }
}

class ContraindicacionesWidget extends StatelessWidget {
  final String titulo;
  final List<String> contenido;
  final VoidCallback onSiPressed;
  final VoidCallback onNoPressed;

  const ContraindicacionesWidget({
    super.key,
    required this.titulo,
    required this.contenido,
    required this.onSiPressed,
    required this.onNoPressed,
  });

  @override
  Widget build(BuildContext context) {
    const String imagesrc = 'assets/images/inicio/inicio_sesion.jpg';
    const Color colorButton = Colors.orange;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: contenido.length,
                itemBuilder: (context, index) {
                  return Text(
                    '- ${contenido[index]}',
                    style: const TextStyle(fontSize: 16),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text('¿Presentas alguna de estas condiciones?',
                style: const TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Button(
                      buttonName: 'Si',
                      buttonColor: colorButton,
                      onPressed: onSiPressed,
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los botones
                  Expanded(
                    child: Button(
                      buttonName: 'NO',
                      buttonColor: colorButton,
                      onPressed: onNoPressed,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EjerciciosPage extends StatelessWidget {
  const EjerciciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicios'),
      ),
      body: Center(
        child: Text('Opciones de ejercicios'),
      ),
    );
  }
}

 */
