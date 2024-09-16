import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final bool showButton;
  final bool isSubtitle;
  final Color color;

  const HeaderWidget(
      {super.key,
      required this.text,
      required this.color,
      this.showButton = false,
      this.isSubtitle = false});

  @override
  Widget build(BuildContext context) {
    //Titulo
    const TextStyle titleStyle = TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    //Subtitulo
    const TextStyle subtitleStyle = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      height: 1.2,
    );

    return Padding(
      padding: const EdgeInsets.only(
          top: 60.0, left: 25.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: showButton
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              text,
              //textAlign: TextAlign.justify,
              style: isSubtitle ? subtitleStyle : titleStyle,
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),

          if (showButton)
            IconButton(
                onPressed: () {
                  print("Home Button");
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(color),
                  iconColor: WidgetStateProperty.all(Colors.white),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                icon: const Icon(Icons.home))
        ],
      ),
    );
  }
}
