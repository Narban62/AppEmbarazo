import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class ContraindicacionesPage1 extends StatelessWidget {
  const ContraindicacionesPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ContraindicacionesWidget(
      titulo: 'LA ACTIVIDAD FÍSICA ESTÁ CONTRAINDICADA EN LOS SIGUIENTES CASOS',
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ContraindicacionesPage2(),
          ),
        );
      },
    );
  }
}

class ContraindicacionesPage2 extends StatelessWidget {
  const ContraindicacionesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ContraindicacionesWidget(
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
        // Acción si se presiona "SÍ" en esta página.
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contraindicaciones'),
      ),
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
            ImagenWidget(imagesrc: imagesrc, isPrincipal: false), // Cambia la ruta si es necesario
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onSiPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('SÍ'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('NO'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
