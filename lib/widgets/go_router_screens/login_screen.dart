import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log In')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go( '/${screenRoutes[Screen.home]}'),
          child: const Text('Log In'),
        ),
      ),
    );
  }
}
