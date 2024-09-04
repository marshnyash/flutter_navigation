import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/${screenRoutes[Screen.home]}'),
          child: const Text('Register'),
        ),
      ),
    );
  }
}
