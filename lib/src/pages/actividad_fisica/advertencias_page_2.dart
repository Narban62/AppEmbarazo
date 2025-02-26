import 'package:flutter/cupertino.dart';

import 'advertencias_page.dart';

class ContraindicacionesPage2 extends StatefulWidget{
  const ContraindicacionesPage2({super.key});

  @override
  _ContraPage2State createState() => _ContraPage2State();
}

class _ContraPage2State extends State<ContraindicacionesPage2> {

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
