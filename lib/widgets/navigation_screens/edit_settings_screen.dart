import 'package:flutter/material.dart';

class EditSettingsScreen extends StatelessWidget {
  const EditSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Settings')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Save Settings'),
        ),
      ),
    );
  }
}
