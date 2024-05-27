import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer_tile.dart';
import 'package:food_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(top:150.0),
        child: Column(
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            MyDrawerTile(icon: Icons.home, onTap: () => Navigator.pop(context), text: "HOME"),
            MyDrawerTile(
              icon: Icons.settings, 
              onTap: () => {
                Navigator.pop(context),
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()))
              }, 
              text: "SETTINGS",
            ),
            const Spacer(),
            MyDrawerTile(icon: Icons.logout, onTap: () {}, text: "LOGOUT"),
            const SizedBox(height: 25,)
          ],
        ),
      ), 
    );
  }
}