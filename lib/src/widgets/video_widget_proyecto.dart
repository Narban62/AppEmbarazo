import 'package:app_embarazo/src/pages/full_screen_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidgetProyecto extends StatefulWidget {
  final String videoUrl;
  final String videoImage;
  final String? description;
  final double width;
  final double height;
  final Color bgColor;

  const VideoWidgetProyecto({
    super.key,
    required this.videoUrl,
    required this.videoImage,
    this.description,
    required this.bgColor,
    this.width = 1,
    this.height = 0.6, // Aumentamos la altura para dar más espacio al video
  });

  @override
  State<VideoWidgetProyecto> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidgetProyecto> {
  late VideoPlayerController _controller;
  bool _isVideoReady = false;
  bool _isPlaying = false;
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
      style: const TextStyle(fontSize: 16, color: Colors.black),
    );

    final textPainter = TextPainter(
      text: textSpan,
      maxLines: 4,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: 250);
    setState(() {
      _isOverflowing = textPainter.didExceedMaxLines;
    });
  }

  void _showFullDescription(BuildContext context, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Descripción completa"),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: widget.width * screenWidth,
      height: widget.height * screenHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.bgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.description != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  Text(
                    widget.description!,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  if (_isOverflowing)
                    TextButton(
                      onPressed: () {
                        _showFullDescription(context, widget.description!);
                      },
                      child: const Text(
                        'Ver más',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                ],
              ),
            ),

          // Contenedor del video centrado
          Expanded(
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: _isVideoReady
                    ? Stack(
                  alignment: Alignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    GestureDetector(
                      onTap: _togglePlayPause,
                      child: AnimatedOpacity(
                        opacity: _isPlaying ? 0.0 : 1.0,
                        duration: const Duration(milliseconds: 300),
                        child: Container(
                          color: Colors.black38,
                          child: const Icon(
                            Icons.play_circle_fill,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(
                          Icons.fullscreen,
                          color: Colors.white,
                        ),
                        onPressed: () async {
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
                      ),
                    ),
                  ],
                )
                    : CachedNetworkImage(
                  imageUrl: widget.videoImage,
                  placeholder: (context, url) =>
                  const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                  const Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
