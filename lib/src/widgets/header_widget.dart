import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final bool showButton;
  final bool isSubtitle;
  final Color color;
  final TextAlign textAlign;
  final Color? textColor; // Nuevo parámetro para color de texto

  const HeaderWidget({
    super.key,
    required this.text,
    required this.color,
    this.showButton = false,
    this.isSubtitle = false,
    this.textAlign = TextAlign.left,
    this.textColor, // Se agrega al constructor
  });

  @override
  Widget build(BuildContext context) {
    // Si no se pasa color de texto, se calcula según el fondo
    Color finalTextColor = textColor ??
        (ThemeData.estimateBrightnessForColor(color) == Brightness.dark
            ? Colors.white
            : Colors.black);

    // Convertir el texto a minúsculas y capitalizar la primera letra después de un símbolo de exclamación o pregunta
    String formattedText = text.toLowerCase();
    if (formattedText.startsWith('¿') || formattedText.startsWith('¡')) {
      formattedText = formattedText[0] + formattedText[1].toUpperCase() + formattedText.substring(2);
    } else {
      formattedText = formattedText[0].toUpperCase() + formattedText.substring(1);
    }

    // Titulo
    TextStyle titleStyle = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w700,
      color: finalTextColor,
      letterSpacing: 1.8,
    );

    // Subtitulo
    TextStyle subtitleStyle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: finalTextColor.withOpacity(0.9),
      height: 1.5,
    );

    return Container(
      margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.9), color.withOpacity(0.5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 15.0,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              formattedText,
              textAlign: textAlign,
              style: isSubtitle ? subtitleStyle : titleStyle,
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}