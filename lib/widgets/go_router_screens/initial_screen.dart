import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/constants.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      bool isLoggedIn = false; // Change this value to simulate logged in state

      if (isLoggedIn) {
        context.go('/${screenRoutes[Screen.home]}');
      } else {
        context.go('/${screenRoutes[Screen.welcome]}');
      }
    });

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
