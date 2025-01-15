import 'package:flutter/material.dart';

import '../../main_navigation_bar.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const BaseScaffold({
    Key? key,
    required this.body,
    this.title = 'Wakakuna',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      bottomNavigationBar: const MainNavigationBar(),
      body: body,
    );
  }
}
