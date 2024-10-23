import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullscreenVideoPage extends StatefulWidget {
  final String videoUrl;

  FullscreenVideoPage({required this.videoUrl});

  @override
  _FullscreenVideoPageState createState() => _FullscreenVideoPageState();
}

class _FullscreenVideoPageState extends State<FullscreenVideoPage> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _isPlaying = true;
          _controller.play(); // Reproducir video automáticamente
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Retroceder 5 segundos
  void _rewind() {
    final currentPosition = _controller.value.position;
    final newPosition = Duration(seconds: currentPosition.inSeconds - 5);
    _controller.seekTo(newPosition);
  }

  // Avanzar 5 segundos
  void _fastForward() {
    final currentPosition = _controller.value.position;
    final newPosition = Duration(seconds: currentPosition.inSeconds + 5);
    _controller.seekTo(newPosition);
  }

  // Alternar entre reproducir y pausar
  void _togglePlayPause() {
    setState(() {
      if (_isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      _isPlaying = !_isPlaying;
    });
  }

  // Función para actualizar la posición del video al mover la barra de progreso
  void _seekToPosition(double position) {
    final duration = _controller.value.duration;
    final newPosition =
        Duration(seconds: (duration.inSeconds * position).toInt());
    _controller.seekTo(newPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _controller.value.isInitialized
          ? Stack(
              children: [
                GestureDetector(
                  onTap: _togglePlayPause,
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ),

                // Botón de salir
                Positioned(
                  top: 40.0,
                  right: 15.0,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white, size: 32.0),
                    onPressed: () {
                      Navigator.pop(context); // Salir de la pantalla completa
                    },
                  ),
                ),

                // Mostrar controles en la parte inferior
                Positioned(
                  bottom: 30.0,
                  left: 10.0,
                  right: 10.0,
                  child: Column(
                    children: [
                      // Barra de progreso del video
                      VideoProgressIndicator(
                        _controller,
                        allowScrubbing: true,
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        colors: VideoProgressColors(
                          playedColor: Colors.red,
                          bufferedColor: Colors.grey,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Botón de retroceder 5 segundos
                          IconButton(
                            icon: Icon(Icons.replay_5,
                                color: Colors.white, size: 32.0),
                            onPressed: _rewind,
                          ),
                          // Botón de reproducir/pausar
                          IconButton(
                            icon: Icon(
                              _isPlaying ? Icons.pause : Icons.play_arrow,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            onPressed: _togglePlayPause,
                          ),
                          // Botón de avanzar 5 segundos
                          IconButton(
                            icon: Icon(Icons.forward_5,
                                color: Colors.white, size: 32.0),
                            onPressed: _fastForward,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
