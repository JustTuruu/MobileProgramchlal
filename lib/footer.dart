import 'package:Mobicom/home_screen.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 5, 2, 9),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFooterButton(
            // imagePath: 'assets/icon/ai.png',
            icon: Icons.home,
            onPressed: () {
              HomeScreen();
            },
          ),
          _buildFooterButton(
            // imagePath: 'assets/icon/ai.png',
            icon: Icons.home,
            onPressed: () {
              // Add action
            },
          ),
          _buildFooterButton(
            imagePath: 'assets/icon/ai.png',
            onPressed: () {
              // Message action
            },
          ),
          _buildFooterButton(
            icon: Icons.home,
            onPressed: () {
              // Settings action
            },
          ),
          _buildFooterButton(
            // imagePath: 'assets/icon/ai.png',
            icon: Icons.search,
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFooterButton({
  IconData? icon, // ← шинэ мөр
  String? imagePath,
  double size = 12,
  required VoidCallback onPressed,
}) {
  final double iconSize = 30;

  return InkWell(
    onTap: onPressed,
    child: icon != null
        ? Icon(
            icon,
            size: iconSize,
            color: Colors.white,
          )
        : Image.asset(
            imagePath!,
            width: iconSize,
            height: iconSize,
          ),
  );
}
}