import 'package:app_embarazo/src/pages/full_screen_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  final String videoImage;
  final String? description;
  final double width;
  final double height;
  final Color bgColor;

  VideoWidget({
    required this.videoUrl,
    required this.videoImage,
    this.description,
    required this.bgColor,
    this.width = 1,
    this.height = .5,  // Reducimos la altura general del contenedor
  });

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _isVideoReady = false;
  bool _isOverflowing = false;

  @override
  void initState() {
    super.initState();
    _loadVideo();
    _checkTextOverflow();
  }

  Future _loadVideo() async {
    final videoUrl =
        await FirebaseStorage.instance.ref(widget.videoUrl).getDownloadURL();

    _controller = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setState(() {
          _isVideoReady = true;
        });
      });
  }

  void _checkTextOverflow() {
    final textSpan = TextSpan(
      text: widget.description,
      style: TextStyle(fontSize: 16, color: Colors.black),
    );

    final textPainter = TextPainter(
      text: textSpan,
      maxLines: 4,  // Aumenta el número de líneas para mostrar más texto
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: 250);  // Ajusta este valor según el diseño
    setState(() {
      _isOverflowing = textPainter.didExceedMaxLines;
    });
  }

  void _showFullDescription(BuildContext context, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Descripción completa"),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: widget.width * screenWidth,
      height: widget.height * screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.bgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          // Caja de texto centrada verticalmente
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.description ?? '',
                    maxLines: 5,  
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  if (_isOverflowing)
                    TextButton(
                      onPressed: () {
                        _showFullDescription(context, widget.description!);
                      },
                      child: Text(
                        'Ver más',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                ],
              ),
            ),
          ),
          
          // Video o imagen
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: _isVideoReady
                ? GestureDetector(
                    onTap: () async {
                      final videoUrl = await FirebaseStorage.instance
                          .ref(widget.videoUrl)
                          .getDownloadURL();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FullscreenVideoPage(videoUrl: videoUrl),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                        if (!_isPlaying)
                          Icon(Icons.play_arrow, size: 50, color: Colors.white)
                      ],
                    ),
                  )
                : CachedNetworkImage(
                    imageUrl: widget.videoImage,
                    placeholder: (context, url) =>
                        CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
          ),
        ],
      ),
    );
  }
}
