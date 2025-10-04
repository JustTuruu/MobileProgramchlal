import 'package:flutter/material.dart';
import 'gift_screen.dart';
import 'noti.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Mobicom",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 5, 2, 9),
      actions: [
        // Gift button
        IconButton(
          icon: const Icon(Icons.card_giftcard, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GiftScreen()),
            );
          },
        ),
        // Notification button
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Noti()),
            );
          },
        ),
        // Profile button
        IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {
            // Profile action
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Profile"),
                content: const Text("Profile хэсэг"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Хаах"),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}