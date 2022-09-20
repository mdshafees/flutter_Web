import 'package:flutter/material.dart';

import '../constants.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              "assets/Wattpad_logo.png",
              color: Colors.white.withOpacity(0.5),
            )),
            DrawerTile(
                text: "Dashboard", icon: Icons.dashboard, callback: () {}),
            DrawerTile(text: "Payment", icon: Icons.money, callback: () {}),
            DrawerTile(text: "Task", icon: Icons.task, callback: () {}),
            DrawerTile(
                text: "Notification",
                icon: Icons.notifications,
                callback: () {}),
            DrawerTile(text: "Settings", icon: Icons.settings, callback: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {super.key,
      required this.text,
      required this.callback,
      required this.icon});

  final VoidCallback callback;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        callback();
      },
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
