import 'package:flutter/material.dart';

class Noti extends StatelessWidget {
  const Noti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Таны сонорт")),
      body: const Center(
        child: Text(
          "Welcome to Notifacation Page ",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}