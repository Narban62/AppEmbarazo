// filepath: /lib/exercise_screen.dart
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);
  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late VideoPlayerController _controller;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60; // 1 minuto

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.example.com/video.mp4', // URL del video
    )..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Título del Ejercicio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Center(child: CircularProgressIndicator()),
            SizedBox(height: 16),
            CountdownTimer(
              endTime: endTime,
              widgetBuilder: (_, time) {
                if (time == null) {
                  return Text('¡Tiempo terminado!');
                }
                return Text(
                  'Tiempo restante: ${time.min ?? 0}:${time.sec ?? 0}',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}