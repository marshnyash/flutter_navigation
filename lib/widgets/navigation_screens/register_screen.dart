import 'package:flutter/material.dart';
import 'package:navigation_project/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacementNamed(context,
              '${screenRoutes[Screen.initial]}${screenRoutes[Screen.home]}'),
          child: const Text('Register'),
        ),
      ),
    );
  }
}
