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
          // Footer
          const Footer(),
        ],
      ),
    );
  }
}
