import 'package:flutter/material.dart';
import 'package:parallax_scroll_effect_app/screens/home_screen_content.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        title: const Text('Parallax Scroll Effect ',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
        ),
      ),
      body: const HomeScreenContent(),
    );
  }
}
