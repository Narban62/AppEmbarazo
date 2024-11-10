
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:app_embarazo/src/pages/full_screen_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  final String videoImage;
  final double width;
  final double height;
  final Color bgColor;

  VideoWidget({
    required this.videoUrl,
    required this.videoImage,
    required this.bgColor,
    this.width = 1,
    this.height = .8,
  });


  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _isVideoReady = false;

  @override
  void initState() {


    super.initState();
    _loadVideo();
  }


  Future<void> _loadVideo() async {
    final videoUrl =
    await FirebaseStorage.instance.ref(widget.videoUrl).getDownloadURL();

    // Ruta para almacenar el video en caché
    final Directory tempDir = await getTemporaryDirectory();
    final String videoFilePath = '${tempDir.path}/${widget.videoUrl.split('/').last}';

    // Comprobar si el video ya está almacenado en caché
    if (File(videoFilePath).existsSync()) {
      _controller = VideoPlayerController.file(File(videoFilePath))
        ..initialize().then((_) {
          setState(() {
            _isVideoReady = true;
          });
        });
    } else {
      // Si no existe, descargar el video
      final response = await HttpClient().getUrl(Uri.parse(videoUrl));
      final bytes = await response.close().then((response) => response.fold<List<int>>([], (a, b) => a..addAll(b)));
      final videoFile = File(videoFilePath);
      await videoFile.writeAsBytes(bytes);

      // Inicializar el controlador con el archivo guardado
      _controller = VideoPlayerController.file(videoFile)
        ..initialize().then((_) {
          setState(() {
            _isVideoReady = true;
          });
        });
    }

  }

  @override
  void dispose() {

    _controller.dispose();
    super.dispose();
  }

  void _openFullscreenVideo(BuildContext context, String videoUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullscreenVideoPage(videoUrl: videoUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: widget.width * screenWidth,
      height: widget.height * screenWidth,
      color: widget.bgColor,
      child: _isVideoReady
          ? GestureDetector(
        onTap: () async {
          final videoUrl = await FirebaseStorage.instance.ref(widget.videoUrl).getDownloadURL();
          _openFullscreenVideo(context, videoUrl);
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            if (!_isPlaying)
              Icon(Icons.play_arrow, size: 100, color: Colors.white),
          ],
        ),
      )
          : GestureDetector(
        onTap: () async {
          // Obtener la URL del video y abrir en pantalla completa
          final videoUrl = await FirebaseStorage.instance.ref(widget.videoImage).getDownloadURL();
          _openFullscreenVideo(context, videoUrl);
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Mostrar la imagen del thumbnail mientras se carga el video
            CachedNetworkImage(
              imageUrl: widget.videoImage,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            // Mostrar el botón de play sobre la imagen del thumbnail
            Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 64.0,
            ),
          ],
        ),
      ),
      padding: EdgeInsets.all(10.0),
    );
  }

}
