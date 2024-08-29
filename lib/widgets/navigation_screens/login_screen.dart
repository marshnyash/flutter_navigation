import 'package:flutter/material.dart';
import 'package:navigation_project/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log In')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacementNamed(context,
              '${screenRoutes[Screen.initial]}${screenRoutes[Screen.home]}'),
          child: const Text('Log In'),
        ),
      ),
    );
  }
}
