import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedBubbles extends StatefulWidget {
  const AnimatedBubbles({Key? key}) : super(key: key);

  @override
  _AnimatedBubblesState createState() => _AnimatedBubblesState();
}

class _AnimatedBubblesState extends State<AnimatedBubbles> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Bubble> _bubbles = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 5))
      ..addListener(() {
        setState(() {
          for (var bubble in _bubbles) {
            bubble.fall();
          }
        });
      })
      ..repeat();

    for (var i = 0; i < 15; i++) {
      _bubbles.add(Bubble());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: MediaQuery.of(context).size,
          painter: BubblePainter(_bubbles),
        );
      },
    );
  }
}

class Bubble {
  double x;
  double y;
  double radius;
  double dy;
  Color color;

  Bubble()
      : x = Random().nextDouble() * 400,
        y = Random().nextDouble() * -800,
        radius = Random().nextDouble() * 20 + 10,
        dy = Random().nextDouble() * 2 + 1,
        color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.3);

  void fall() {
    y += dy;
    if (y > 800) y = Random().nextDouble() * -200;
  }
}

class BubblePainter extends CustomPainter {
  final List<Bubble> bubbles;

  BubblePainter(this.bubbles);

  @override
  void paint(Canvas canvas, Size size) {
    for (var bubble in bubbles) {
      final paint = Paint()..color = bubble.color;
      canvas.drawCircle(Offset(bubble.x, bubble.y), bubble.radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
