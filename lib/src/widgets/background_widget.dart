import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  final Color color;

  const AnimatedBackground({Key? key, required this.color}) : super(key: key);

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  Color _currentColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _startBackgroundAnimation();
  }

  void _startBackgroundAnimation() {
    Timer.periodic(const Duration(seconds: 6), (timer) {
      setState(() {
        _currentColor = _currentColor == Colors.white ? widget.color : Colors.white;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: ColorTween(begin: _currentColor, end: _currentColor),
      duration: const Duration(seconds: 3),
      builder: (context, Color? color, _) {
        return Container(
          color: color,
        );
      },
    );
  }
}
