import 'package:flutter/material.dart';
import 'package:navigation_project/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context,
              '${screenRoutes[Screen.initial]}${screenRoutes[Screen.editSettings]}'),
          child: const Text('Edit Settings'),
        ),
      ),
    );
  }
}
