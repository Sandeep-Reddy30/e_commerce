import 'package:e_commerce/components/ProfilePage.dart';
import 'package:e_commerce/components/ProfilePageDialog.dart'; // Import the dialog function
import 'package:flutter/material.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySilverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 320,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // Profile icon with tap gesture
        GestureDetector(
          onTap: () {
            // Show ProfilePage dialog on tap
            showProfileDialog(context);
          },
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 45, 147, 188), // Background color of the avatar
            child: Icon(
              Icons.person,
              color: Colors.white, // Color of the icon
            ),
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text(
        "Reva Store",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Georgia',
        ),
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
