import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  final Color color;

  const AnimatedBackground({Key? key, required this.color}) : super(key: key);

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  Timer? _timer; // Usar una referencia nullable para evitar problemas
  Color _currentColor = Colors.white; // Color inicial
  Color _nextColor = Colors.white; // Color siguiente para la animación

  @override
  void initState() {
    super.initState();
    _startBackgroundAnimation();
  }

  void _startBackgroundAnimation() {
    _timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      if (!mounted) {
        // Cancelar el timer si el widget no está montado
        timer.cancel();
        return;
      }

      setState(() {
        _nextColor = _currentColor == Colors.white ? widget.color : Colors.white;
        _currentColor = _nextColor; // Actualizar el color actual
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancelar el Timer si existe
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: ColorTween(begin: _currentColor, end: _nextColor),
      duration: const Duration(seconds: 3),
      builder: (context, Color? color, _) {
        return Container(
          color: color,
          child: Center(
            child: Text(
              '',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
        );
      },
    );
  }
}
