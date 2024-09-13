import 'package:e_commerce/components/my_drawer_tile.dart';
import 'package:e_commerce/pages.dart/Settings_page.dart';
import 'package:e_commerce/pages.dart/login_page.dart'; // Import LoginPage
import 'package:e_commerce/pages.dart/cart_page.dart'; // Import CartPage
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset(
              'assets/logoo.png', // Path to your image file
              width: 130, // Adjust width as needed
              height: 130, // Adjust height as needed
            ),
          ),

          // Home list style
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // Cart
          MyDrawerTile(
            text: "C A R T",
            icon: Icons.shopping_cart,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),

          // Settings
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          const Spacer(),

          // Logout
          MyDrawerTile(
            text: "L O G - O U T",
            icon: Icons.logout,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(onTap: () {  },)),
              );
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
