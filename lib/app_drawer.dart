import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onSelect;

  AppDrawer({required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('SnapNews')),
          ListTile(
            title: Text('Summary Overview'),
            onTap: () => onSelect(0),
          ),
          ListTile(
            title: Text('Recent Articles'),
            onTap: () => onSelect(1),
          ),
          ListTile(
            title: Text('User Trends'),
            onTap: () => onSelect(2),
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () => onSelect(3),
          ),
          // Add more list tiles as needed
        ],
      ),
    );
  }
}
