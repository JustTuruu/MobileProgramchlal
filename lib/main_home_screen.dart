import 'package:flutter/material.dart';
import 'gift_screen.dart';
import 'noti.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  bool showProfileMenu = false;

  void toggleProfileMenu() {
    setState(() {
      showProfileMenu = !showProfileMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobicom",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
                MaterialPageRoute(builder: (context) => const GiftScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Noti()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: toggleProfileMenu,
          ),
        ],
      ),
      body: Stack(
        children: [
          const Center(
            child: Text(
              "Үндсэн контент энд байна",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          if (showProfileMenu)
            Positioned(
              top: 0,
              right: 0,
              width: 300,
              height: MediaQuery.of(context).size.height,
              child: Material(
                elevation: 5,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    const SizedBox(height: kToolbarHeight),
                    ListTile(
                      leading: const Icon(Icons.arrow_back),
                      title: const Text("Back"),
                      onTap: () {
                        setState(() {
                          showProfileMenu = false;
                        });
                      },
                    ),
                    const Divider(),
                    const ListTile(title: Text("Profile")),
                    const ListTile(title: Text("Settings")),
                    const ListTile(title: Text("Logout")),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
