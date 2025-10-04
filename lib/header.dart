import 'package:flutter/material.dart';
import 'gift_screen.dart'; 

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(right: 240.0),
        child: Text(
          "mobicom",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 5, 2, 9),
      actions: [
        IconButton(
          icon: const Icon(Icons.card_giftcard), 
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GiftScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}