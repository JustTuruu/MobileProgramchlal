import 'package:flutter/material.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gift Page")),
      body: const Center(
        child: Text(
          "Welcome to Gift Page 🎁",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}