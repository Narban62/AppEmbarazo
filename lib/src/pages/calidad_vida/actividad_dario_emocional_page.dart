import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_button_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../widgets/square_button.dart';

class DiarioPage extends StatefulWidget {
  const DiarioPage({super.key});

  @override
  State<DiarioPage> createState() => _DiarioPageState();
}

class _DiarioPageState extends State<DiarioPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  String? _selectedCause;
  String? _selectedCause1;

  Stream<String?> escucharSentimiento() {
    User? usuario = FirebaseAuth.instance.currentUser;
    if (usuario != null) {
      String uid = usuario.uid;
      return FirebaseFirestore.instance
          .collection('diario')
          .where('uid', isEqualTo: uid)
          .orderBy('fecha', descending: true)
          .limit(1)
          .snapshots()
          .map((query) => query.docs.isNotEmpty ? query.docs.first['sentimiento'] as String? : null);
    }
    return Stream.value(null);
  }


  Future<void> guardarEntradaDiario() async {
    User? usuario = FirebaseAuth.instance.currentUser;
    if (usuario == null) return;

    String uid = usuario.uid;

    if (_selectedCause1 == null || _selectedCause == null) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Selecciona dos causas antes de continuar"))
      );
      return;
    }

    try {
      // Consultar nombre y apellido desde Firestore
      DocumentSnapshot usuarioDoc = await FirebaseFirestore.instance
          .collection('usuarios') // Asegúrate de que la colección sea la correcta
          .doc(uid)
          .get();

      String nombres = usuarioDoc.get('nombres') ?? 'Desconocido';
      String apellidos = usuarioDoc.get('apellidos') ?? 'Desconocido';

      // Guardar en Firestore
      await FirebaseFirestore.instance.collection('diario').add({
        'uid': uid,
        'nombres': nombres,
        'apellidos': apellidos,
        'fecha': Timestamp.now(),
        'causa': _selectedCause,
        'causa1': _selectedCause1,
        'titulo': _titleController.text,
        'descripcion': _descriptionController.text,
      });

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Registro guardado exitosamente"))
      );

      _titleController.clear();
      _descriptionController.clear();
      setState(() {
        _selectedCause1 = null;
        _selectedCause = null;
      });

    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error al guardar: $e"))
      );
    }

    Navigator.pushNamed(context, '/calidad_vida');

  }


  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xffE7BAFF);
    const Color colorButton = Color(0xff734A91);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              text: '¿Qué actividades han provocado este sentimiento en ti?',
              color: color,
              isSubtitle: true,
              showButton: false,
            ),

          StreamBuilder<String?>(
            stream: escucharSentimiento(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return TextWidget(text: 'Cargando sentimiento...');
              } else if (snapshot.hasError) {
                return TextWidget(text: 'Error al obtener sentimiento');
              } else if (snapshot.hasData && snapshot.data != null) {
                return TextWidget(text: 'Clima emocional: ${snapshot.data}');
              } else {
                return TextWidget(text: 'No hay datos de sentimiento.');
              }
            },
          ),

          // Sección de emociones
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/clima/img.png',
                      text: 'Soleado',
                      color: _selectedCause1 == 'Soleado' ? Colors.green : colorButton,
                      onPressed: () => setState(() => _selectedCause1 = 'Soleado'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/clima/img_1.png',
                      text: 'Nublado',
                      color: _selectedCause1 == 'Nublado' ? Colors.green : colorButton,
                      onPressed: () => setState(() => _selectedCause1 = 'Nublado'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/clima/img_2.png',
                      text: 'Lluvioso',
                      color: _selectedCause1 == 'Lluvioso' ? Colors.green : colorButton,
                      onPressed: () => setState(() => _selectedCause1 = 'Lluvioso'),
                    ),
                  ),
                ],
              ),
            ),

          StreamBuilder<String?>(
            stream: escucharSentimiento(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return TextWidget(text: 'Cargando sentimiento...');
              } else if (snapshot.hasError) {
                return TextWidget(text: 'Error al obtener sentimiento');
              } else if (snapshot.hasData && snapshot.data != null) {
                return TextWidget(text: 'Social emocional: ${snapshot.data}');
              } else {
                return TextWidget(text: 'No hay datos de sentimiento.');
              }
            },
          ),

          // Sección de causas
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/clima/img_3.png',
                      text: 'Familia',
                      color: _selectedCause == 'Familia' ? Colors.green : colorButton,
                      onPressed: () => setState(() => _selectedCause = 'Familia'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/clima/img_4.png',
                      text: 'Amigos',
                      color: _selectedCause == 'Amigos' ? Colors.green : colorButton,
                      onPressed: () => setState(() => _selectedCause = 'Amigos'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SquareButton(
                      imageSrc: 'assets/images/calidad_vida/clima/img_5.png',
                      text: 'Viajes',
                      color: _selectedCause == 'Viajes' ? Colors.green : colorButton,
                      onPressed: () => setState(() => _selectedCause = 'Viajes'),
                    ),
                  ),
                ],
              ),
            ),

            TextWidget(text: 'Diario emocional: cuéntanos qué causó este sentimiento'),

            // Campos de texto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Título',
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Descripción',
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    maxLines: 4,
                  ),
                ],
              ),
            ),

            // Botón para guardar
            Button(
              buttonName: 'Guardar',
              buttonColor: colorButton,
              onPressed: guardarEntradaDiario,
            ),
          ],
        ),
      ),
    );
  }
}
