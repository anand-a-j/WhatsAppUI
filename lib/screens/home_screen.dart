import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff222e35),
        title: const Text(
          'WhatsApp',
        ),
        actions: const [
          Icon(
            Icons.photo_camera,
          ),
          SizedBox(width: 15),
          Icon(Icons.search),
          SizedBox(width: 15),
          SizedBox(width: 15),
        ],
      ),
      body: null,
    );
  }
}
