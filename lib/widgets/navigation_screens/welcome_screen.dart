import 'package:flutter/material.dart';
import 'package:navigation_project/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,
                  '${screenRoutes[Screen.initial]}${screenRoutes[Screen.login]}'),
              child: const Text('Log In'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,
                  '${screenRoutes[Screen.initial]}${screenRoutes[Screen.register]}'),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
