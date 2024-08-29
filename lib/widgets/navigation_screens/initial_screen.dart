import 'package:flutter/material.dart';
import 'package:navigation_project/constants.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      bool isLoggedIn = false; // Change this value to simulate logged in state

      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context,
            '${screenRoutes[Screen.initial]}${screenRoutes[Screen.home]}');
      } else {
        Navigator.pushReplacementNamed(context,
            '${screenRoutes[Screen.initial]}${screenRoutes[Screen.welcome]}');
      }
    });

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
