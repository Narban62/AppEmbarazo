import 'package:flutter/material.dart';

import '../../main_navigation_bar.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const BaseScaffold({required this.body, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: body,
      bottomNavigationBar: const MainNavigationBar(),
    );
  }
}
