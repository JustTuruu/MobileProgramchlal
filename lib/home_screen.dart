import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: const Header(),
      ),
      body: Column(
        children: [
          // Үндсэн контент
          Expanded(
            child: const Center(
              child: Text(
                "This is Home Screen",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          // Footer
          const Footer(),
        ],
      ),
    );
  }
}