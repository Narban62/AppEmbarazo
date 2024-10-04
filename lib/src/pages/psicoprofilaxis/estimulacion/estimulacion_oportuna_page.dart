import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EstimulacionOportunaPage extends StatefulWidget {
  const EstimulacionOportunaPage({super.key});

  @override
  State<EstimulacionOportunaPage> createState() =>
      _EstimulacionOportunaPageState();
}

class _EstimulacionOportunaPageState extends State<EstimulacionOportunaPage> {
  @override
  Widget build(BuildContext context) {
    const Color colorButton = Color(0xffF75B89);
    const Color color = Color(0xffFCDEE7);
    return Scaffold(
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(
                color: colorButton,
                text: 'ESTIMULACIÓN OPORTUNA',
                isSubtitle: true,
                showButton: false,
              ),
              const TextWidget(
                  text:
                      'La estimulación prenatal o intrauterina es un conjunto de técnicas físicas y de relajación aplicadas por los padres durante la gestación, con el objetivo de favorecer el desarrollo del niño o niña por nacer, de acuerdo con su proceso natural.'),
              const HeaderWidget(
                color: colorButton,
                text: 'Beneficios:',
                isSubtitle: true,
                showButton: false,
              ),
              const TextWidget(
                  text:
                      '• Desarrollo físico y mental  \n• Crear un vínculo afectivo\n• Desarrollar los sentidos\n• Desarrollo emocional y social del niño\n• Desarrollo del sistema nervioso del feto'),
              Button(
                  buttonName: "Estimulación Auditiva",
                  buttonColor: const Color(0xffF75B89),
                  onPressed: () {
                    Navigator.pushNamed(context, '/estimulacion_auditiva');
                  }),
              Button(
                  buttonName: "Estimulación Motora",
                  buttonColor: const Color(0xffF75B89),
                  onPressed: () {
                    Navigator.pushNamed(context, '/estimulacion_motora');
                  }),
              Button(
                  buttonName: "Estimulación Táctil",
                  buttonColor: const Color(0xffF75B89),
                  onPressed: () {
                    Navigator.pushNamed(context, '/estimulacion_tactil');
                  }),
              Button(
                  buttonName: "Estimulación Visual",
                  buttonColor: const Color(0xffF75B89),
                  onPressed: () {
                    Navigator.pushNamed(context, '/estimulacion_visual');
                  }),
            ],
          ),
        ));
  }
}

void test() {
  print("test JOsue");
}
