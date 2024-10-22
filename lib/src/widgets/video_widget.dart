import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  final String videoImage;

  VideoWidget({required this.videoUrl, required this.videoImage});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _isVideoReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadVideo();
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

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }

    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isVideoReady
        ? GestureDetector(
            onTap: _togglePlayPause,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller)),
                if (!_isPlaying)
                  Icon(Icons.play_arrow, size: 100, color: Colors.white)
              ],
            ),
          )
        : GestureDetector(
            onTap: _togglePlayPause,
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
          );
  }
}
