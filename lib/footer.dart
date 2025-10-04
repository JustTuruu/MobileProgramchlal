import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30), // Доод талд 20px зай
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
          // Button 1 - Home
          _buildFooterButton(
            icon: Icons.home,
            onPressed: () {
              // Home action
            },
          ),
          // Button 3 - Add
          _buildFooterButton(
            icon: Icons.add_circle,
            onPressed: () {
              // Add action
            },
          ),
          // Button 4 - Messages
          _buildFooterButton(
            icon: Icons.message,
            onPressed: () {
              // Message action
            },
          ),
          // Button 5 - Settings
          _buildFooterButton(
            icon: Icons.settings,
            onPressed: () {
              // Settings action
            },
          ),
          _buildFooterButton(
            icon: Icons.search,
            onPressed: () {
              // Search action
            },
          )
        ],
      ),
    );
  }

  Widget _buildFooterButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
        size: 45,
      ),
    );
  }
}
