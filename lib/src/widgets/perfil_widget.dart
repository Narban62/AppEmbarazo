import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart' as dtp;
import '../pages/inicio_sesion_registro/inicio_sesion.dart';
import '../services/auth_service.dart'; // Asegúrate de importar tu AuthService

class ProfileBottomSheet extends StatefulWidget {
  const ProfileBottomSheet({super.key});

  @override
  _ProfileBottomSheetState createState() => _ProfileBottomSheetState();
}

class _ProfileBottomSheetState extends State<ProfileBottomSheet> {
  final AuthService _authService = AuthService();
  Map<String, dynamic>? userData;
  final TextEditingController _ultimaMenstruacionController = TextEditingController();
  String? fechaProbableParto;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('usuarios')
            .doc(user.uid)
            .get();

        setState(() {
          userData = userDoc.data() as Map<String, dynamic>?;
          if (userData?['ultimaMenstruacion'] != null) {
            _ultimaMenstruacionController.text = userData?['ultimaMenstruacion'];
            fechaProbableParto = calcularFechaProbableDeParto(userData?['ultimaMenstruacion']);
          }
        });
      }
    } catch (e) {
      print('Error al cargar los datos del usuario: $e');
    }
  }

  /// 📌 Función para calcular la Fecha Probable de Parto
  String calcularFechaProbableDeParto(String fechaMenstruacion) {
    try {
      List<String> partes = fechaMenstruacion.split('/');
      int dia = int.parse(partes[0]);
      int mes = int.parse(partes[1]);
      int anio = int.parse(partes[2]);

      DateTime fechaInicial = DateTime(anio, mes, dia);
      DateTime fechaParto = fechaInicial.add(const Duration(days: 7)); // Sumar 7 días

      // Restar 3 meses y sumar 1 año
      int nuevoMes = fechaParto.month - 3;
      int nuevoAnio = fechaParto.year +1;

      if (nuevoMes <= 0) {
        nuevoMes += 12;
        nuevoAnio -= 1;
      }

      return "${fechaParto.day}/$nuevoMes/$nuevoAnio";
    } catch (e) {
      return "Fecha inválida";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Perfil del Usuario',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: userData == null
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : ListView(
              children: [
                ListTile(
                  title: Text('Nombre: ${userData?['nombres'] ?? 'Sin nombre'}'),
                ),
                ListTile(
                  title: Text('Apellido: ${userData?['apellidos'] ?? 'Sin apellido'}'),
                ),
                ListTile(
                  title: Text('Cédula: ${userData?['cedula'] ?? 'Sin cédula'}'),
                ),
                ListTile(
                  title: Text('Correo: ${userData?['correo'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text('Teléfono: ${userData?['telefono'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text('Dirección: ${userData?['direccion'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text('Intolerancia: ${userData?['intolerancia'] ?? 'No especificado'}'),
                ),
                ListTile(
                  title: Text('Fecha de Última Menstruación: ${_ultimaMenstruacionController.text}'),
                ),
                ListTile(
                  title: Text('Fecha Probable de Parto: ${fechaProbableParto ?? 'No calculado'}'),
                ),
                const SizedBox(height: 20),
                FractionallySizedBox(
                  widthFactor: 0.85,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        dtp.DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime(1900, 1, 1),
                          maxTime: DateTime.now(),
                          locale: dtp.LocaleType.es,
                          onConfirm: (date) {
                            setState(() {
                              _ultimaMenstruacionController.text =
                              "${date.day}/${date.month}/${date.year}";
                              fechaProbableParto =
                                  calcularFechaProbableDeParto(_ultimaMenstruacionController.text);
                            });
                          },
                        );
                      },
                      child: AbsorbPointer(
                        child: TextField(
                          controller: _ultimaMenstruacionController,
                          decoration: const InputDecoration(
                            labelText: 'Fecha de Última Menstruación',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () async {
                await _authService.signOut();

                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false,
                );
              },
              child: const Text('Cerrar Sesión'),
            ),
          ),
        ],
      ),
    );
  }
}
