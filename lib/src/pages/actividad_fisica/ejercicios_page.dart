import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60; // 1 minuto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio'),
      ),
      body: Center(
        child: CountdownTimer(
          endTime: endTime,
          widgetBuilder: (_, time) {
            if (time == null) {
              return const Text(
                '¡Tiempo terminado!',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              );
            }
            return Text(
              '${time.min ?? 0}:${(time.sec ?? 0).toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}